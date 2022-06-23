DROP TABLE users;
DROP TABLE employers;
DROP TABLE conversations;

-- CREATE TYPE employment_status AS ENUM('self-employed','employed','unemployed') -- pgSql

CREATE TABLE users (
  -- id SERIAL PRIMARY KEY, -- pgSql
  id INT PRIMARY KEY AUTO_INCREMENT, -- MySql
  full_name VARCHAR(300) NOT NULL,
  yearly_salary INT CHECK (yearly_salary>0),
  current_status ENUM('self-employed','employed','unemployed')
  -- current_status employment_status -- pgSql
);

CREATE TABLE employers (
 -- id SERIAL PRIMARY KEY, -- pgSql
  id INT PRIMARY KEY AUTO_INCREMENT, -- MySql
  company_name VARCHAR(300) NOT NULL,
  company_address VARCHAR(300) NOT NULL,
  yearly_revenue FLOAT CHECK (yearly_revenue > 0),
  is_hiring BOOLEAN DEFAULT FALSE
);

CREATE TABLE conversations (
 -- id SERIAL PRIMARY KEY, -- pgSql
  id INT PRIMARY KEY AUTO_INCREMENT, -- MySql
  user_id INT,
  employer_id INT,
  message TEXT NOT NULL
);