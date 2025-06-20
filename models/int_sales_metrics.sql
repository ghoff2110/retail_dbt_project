-- models/int_sales_metrics.sql

{{ config(materialized='view') }}

SELECT
  order_date,
  country,
  product,
  channel,
  quantity,
  revenue,
  EXTRACT(YEAR FROM order_date) AS year,
  EXTRACT(MONTH FROM order_date) AS month,
  ROUND(revenue / NULLIF(quantity, 0), 2) AS avg_unit_price
FROM {{ ref('stg_sales') }}
