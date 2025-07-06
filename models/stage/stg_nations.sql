--use {{config(materialized='view')}}
with nations as(
    select n_nationkey as nationid,
    n_regionkey as regionid,
    n_name as name,
    n_comment as r_comment
    from {{source("src","nations")}}
)
select * from nations