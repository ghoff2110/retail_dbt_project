

  create or replace view `root-micron-435213-v0`.`retail2025`.`int_sales_metrics`
  OPTIONS()
  as -- models/int_sales_metrics.sql



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
FROM `root-micron-435213-v0`.`retail2025`.`stg_sales`;

