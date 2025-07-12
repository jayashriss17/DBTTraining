
with nations as(
    select n_nationkey as nationid,
    n_regionkey as regionid,
    n_name as name,
    n_comment as r_comment,
    current_timestamp() as upd_time  
    from {{source("src","nations")}}
)
select * from nations