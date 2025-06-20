-- Use the `ref` function to select from other models

select *
from `root-micron-435213-v0`.`retail2025`.`my_first_dbt_model`
where id = 1


-- models/stg_sales.sql
SELECT
  DATE(date) AS order_date,
  country,
  product,
  quantity,
  unit_price,
  revenue,
  channel
FROM
  `root-micron-435213-v0.retail2025`.`root-micron-435213-v0.retail2025`.`raw_sales`