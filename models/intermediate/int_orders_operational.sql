select
orders_id,
date_date,
round(margin+shipping_fee-logcost-ship_cost,2) as operational_margin,
revenue,
quantity,
purchase_cost,
margin,
shipping_fee,
logcost,
ship_cost
from {{ref("int_orders_margin")}}
left join {{ref("stg_gz_raw_date__ship")}}
using (orders_id)
order by orders_id desc