select 
    n_nationkey as nation_id,
    n_regionkey as region_id,
    n_name as name,
    n_comment as n_comment
from {{ source('src','nations') }} 