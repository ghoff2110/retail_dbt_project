

  create or replace view `root-micron-435213-v0`.`retail2025`.`model`
  OPTIONS()
  as -- models/stg_sales.sql
SELECT * 

FROM
  `root-micron-435213-v0`.`retail2025`.`raw_sales`;

