-- SELECT *
-- FROM sales
-- WHERE date_fulfilled IS NOT NULL;

SELECT *
FROM sales
WHERE date_fulfilled - date_created <= 5;

--just for timestamp dates
-- SELECT *
-- FROM sales
-- WHERE EXTRACT(DAY FROM date_fulfilled - date_created) <= 5;