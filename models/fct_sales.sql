-- models/final/fct_sales.sql

{{ config(materialized='table') }}

SELECT
  country,
  product,
  channel,
  year,
  month,
  SUM(quantity) AS total_quantity,
  SUM(revenue) AS total_revenue,
  ROUND(AVG(avg_unit_price), 2) AS avg_unit_price
FROM {{ ref('int_sales_metrics') }}
GROUP BY country, product, channel, year, month
ORDER BY year, month, country
