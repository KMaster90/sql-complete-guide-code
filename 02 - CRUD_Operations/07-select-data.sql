-- SELECT *
-- FROM sales;

SELECT 
  'Hello World',
  customer_name AS Name, 
  product_name AS Product,
  volume / 100 AS Vol,
  CURRENT_DATE AS DATE
FROM sales;