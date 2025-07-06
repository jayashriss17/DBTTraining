--use {{config(materialized='table')}}
with tablename as(
    select r_regionkey as regionid,
    r_name as name,
    r_comment as r_comment
    from {{source("src","regions")}}
    --SOURCEDB.MK_MALL.REGIONS

)
Select * from tablename