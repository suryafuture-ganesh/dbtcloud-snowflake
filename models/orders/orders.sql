-- models/staging/stg_orders.sql
{{ config(materialized='table')}}
WITH source AS (
    SELECT 
        order_id,
        customer_id,
        order_date,
        ship_date,
        order_status,
        total_amount,
        payment_method,
        shipping_city,
        shipping_country
    FROM snow_flake_practice.public.orders
),

transformed AS (
    SELECT
        order_id,
        customer_id,
        order_date,
        ship_date,
        DATEDIFF('day', order_date, ship_date) AS shipping_days,
        UPPER(order_status) AS order_status,
        total_amount,
        INITCAP(payment_method) AS payment_method,
        INITCAP(shipping_city) AS shipping_city,
        UPPER(shipping_country) AS shipping_country,
        CURRENT_TIMESTAMP() AS transformed_at
    FROM source
)

SELECT * FROM transformed
