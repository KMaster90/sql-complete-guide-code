 -- Postgresql

ALTER TABLE employers
ALTER COLUMN yearly_revenue SET DATA TYPE FLOAT;

ALTER TABLE users
ALTER COLUMN full_name SET DATA TYPE VARCHAR(300);


 -- MySqls
-- ALTER TABLE employers
-- MODIFY COLUMN yearly_revenue FLOAT(5,2);

-- ALTER TABLE users
-- MODIFY COLUMN full_name VARCHAR(300);