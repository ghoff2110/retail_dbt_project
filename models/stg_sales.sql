-- stg_sales.sql
SELECT
  DATE(date) AS order_date,
  country,
  product,
  quantity,
  unit_price,
  revenue,
  channel
FROM
  {{ source('raw', 'raw_sales') }}
