--use {{config(materialized='table')}}
with customer as(
    select c_custkey as customer_id,
    c_nationkey as nationid,
    c_name as name,
    c_address as r_address,
    c_phone as phone_number,
    c_acctbal as account_balance,
    c_mktsegment as market_segment,
    c_comment as r_comment
    from {{ source('src','customers')}}
)
select * from customer