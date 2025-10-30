select *
from {{ ref("stg_gz_raw_date__adwords") }}
union all
select *
from {{ ref("stg_gz_raw_date__bing") }}
union all
select *
from {{ ref("stg_gz_raw_date__criteo") }}
union all
select *
from {{ ref("stg_gz_raw_date__facebook") }}
