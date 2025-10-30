select
date_trunc(date, month) as datemonth,
round(sum(ads_margin),2) as ads_margin,
round(avg(average_basket),2) as average_basket,
round(sum(operational_margin),2) as operational_margin,
round(sum(ads_cost),2) as ads_cost,
round(sum(ads_impression),2) as ads_impression,
round(sum(ads_clicks),2) as ads_clicks,
round(sum(quantity),2) as quantity,
round(sum(revenue),2) as revenue,
round(sum(purchase_cost),2) as purchase_cost,
round(sum(shipping_fee),2) as shipping_fee,
round(sum(log_cost),2) as log_cost,
round(sum(ship_cost),2) as ship_cost
from {{ref("finance_campaigns_day")}}
group by datemonth