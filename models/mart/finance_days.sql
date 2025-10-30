select
    date_date,
    count(distinct orders_id) as total_nb_transactions,
    round(sum(revenue), 2) as total_revenue,
    round(sum(operational_margin), 2) as operational_margin,
    round(sum(purchase_cost), 2) as total_purchase_cost,
    round(sum(shipping_fee), 2) as total_shipping_fee,
    round(sum(logcost), 2) as total_logcost,
    round(sum(ship_cost), 2) as total_ship_cost,
    sum(quantity) as total_quantity,
    round((sum(revenue) / count(distinct orders_id))) as average_basket
from {{ ref("int_orders_operational") }}
group by date_date
order by date_date desc
