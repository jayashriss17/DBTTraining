{{ config(alias='int_customer_orders')}}
with CustomerOrders as(
    select c.customer_id, sum(o.total_price) price,max(orer_date) date
from {{ref('stg_customers')}} o 
join {{ref('stg_orders')}} c on o.customer_id=c.customer_id
where c.customer_id<=1000
group by 1)
select * from CustomerOrders