-- SELECT *
-- FROM sales
-- WHERE 
--   (date_created > '2022-06-21')
--   AND
--   (date_created < '2022-06-23');

SELECT *
FROM sales
WHERE 
  date_created BETWEEN 
    '2022-06-21'AND '2022-06-23';