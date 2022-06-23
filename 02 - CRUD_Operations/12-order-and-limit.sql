-- SELECT * FROM sales 
-- ORDER BY volume DESC
-- LIMIT 5;

-- SELECT * FROM sales 
-- ORDER BY volume --ASC
-- LIMIT 5;

-- SELECT * FROM sales 
-- WHERE is_disputed IS FALSE
-- ORDER BY volume DESC, customer_name -- second_condition works just in case first_condition is equal
-- LIMIT 3;

SELECT * FROM sales 
ORDER BY volume DESC
LIMIT 5
OFFSET 3;