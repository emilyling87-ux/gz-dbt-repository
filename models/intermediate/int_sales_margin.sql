select 
products_id,
date_date,
orders_id,
purchase_price,
revenue,
quantity,
round(quantity*purchase_price,2) as purchase_cost,
round((revenue-quantity*purchase_price),2) as margin
from {{ref("merge_product_sales")}}

