-- CREATE DATABASE "online-shop";

-- USE `online-shop`;
-- DROP TABLE products;
-- CREATE TABLE IF NOT EXISTS products (
--   product_name VARCHAR(300),
--   price FLOAT,
--   description TEXT,
--   amount_in_stock INT,
--   image VARCHAR(1000)
-- );

-- INSERT INTO products (product_name,price,description,amount_in_stock,image)
-- VALUES 
-- ('acqua',1,'da bere',18,'https://www.inabottle.it/it/benessere/acqua-potabile-qualita-valori-differenza-con-acqua-minerale-naturale'),
-- ('succo',3,'da gustare',18,'https://www.inabottle.it/it/benessere/acqua-potabile-qualita-valori-differenza-con-acqua-minerale-naturale')


-- ALTER TABLE products 
-- ADD CONSTRAINT price_positive CHECK (price>0),
-- ADD CONSTRAINT stock_positive CHECK (amount_in_stock>0);

-- ALTER TABLE products ADD COLUMN id INT PRIMARY KEY AUTO_INCREMENT;
-- ALTER TABLE products ADD COLUMN id SERIAL PRIMARY KEY;

-- ALTER TABLE products MODIFY COLUMN price NUMERIC(10,2);
-- ALTER TABLE products MODIFY COLUMN amount_in_stock SMALLINT;
-- ALTER TABLE products ALTER COLUMN price SET DATA TYPE NUMERIC(10,2);
-- ALTER TABLE products ALTER COLUMN amount_in_stock SET DATA TYPE SMALLINT;

-- ALTER TABLE products
-- MODIFY COLUMN product_name VARCHAR(300) NOT NULL,
-- MODIFY COLUMN price NUMERIC(10,2) NOT NULL,
-- MODIFY COLUMN description TEXT NOT NULL,
-- DROP CONSTRAINT stock_positive,
-- ADD CONSTRAINT stock_positive CHECK (amount_in_stock>=0);

ALTER TABLE products
ALTER COLUMN product_name SET NOT NULL,
ALTER COLUMN price SET NOT NULL,
ALTER COLUMN description SET NOT NULL,
DROP CONSTRAINT stock_positive,
ADD CONSTRAINT stock_positive CHECK (amount_in_stock>=0);
