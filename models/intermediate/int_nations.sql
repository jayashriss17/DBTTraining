{{
        config(
                materialized='incremental', unique_key='nationalid'
        )
}}
 
with customer as (
select
        customer_id,
        nationid,
        name,
        r_address,
        phone_number,
        account_balance,
        market_segment,
        comment
from {{ ref('stg_nations') }}
{% if is_incremental() %}
where upd_time>(select max(upd_time) from {{this}})
{% endif %}
)
 
select * from customer