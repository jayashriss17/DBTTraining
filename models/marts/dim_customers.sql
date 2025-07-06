with customer as (
select * from {{ ref('stg_customers') }}
),
 
nation as (
select * from {{ ref('stg_nations') }}
),
 
region as (
select * from {{ ref('stg_regions') }}
),
final as (
select
        customer.customer_id,
        customer.name,
        customer.r_address,
        nation.nationid as nation_id,
        nation.name as nation,
        region.regionid as region_id,
        region.name as region,
        customer.phone_number,
        customer.account_balance,
        customer.market_segment
        from customer
        inner join nation
            on customer.nationid = nation.nationid
        inner join region
            on nation.regionid = region.regionid
 
)
select * from final