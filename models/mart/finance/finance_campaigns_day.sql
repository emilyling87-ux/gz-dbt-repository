select
date_date as date,
round((operational_margin-ads_cost)) as ads_margin,
average_basket,
operational_margin,
ads_cost,
impression as ads_impression,
click as ads_clicks,
total_quantity as quantity,
total_revenue as revenue,
total_purchase_cost as purchase_cost,
total_shipping_fee as shipping_fee,
total_logcost as log_cost,
total_ship_cost as ship_cost
from {{ref("finance_days")}}
inner join {{ref("int_campaigns_day")}}
using (date_date)


