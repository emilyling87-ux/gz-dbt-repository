with 

source as (

    select * from {{ source('gz_raw_date', 'ship') }}

),

renamed as (

    select
        orders_id,
        shipping_fee,
        logcost,
        cast(ship_cost as float64) as ship_cost

    from source

)

select * from renamed