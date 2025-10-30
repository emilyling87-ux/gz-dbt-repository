select 
products_id,
date_date,
orders_id,
purchase_price,
revenue,
quantity
from {{ref("stg_gz_raw_date__sales")}} 
left join {{ref("stg_gz_raw_date__product")}}
using (products_id)
