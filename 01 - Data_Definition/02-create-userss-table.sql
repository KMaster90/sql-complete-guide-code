-- Postgresql + ENUM => We have to create a custom type first
create type employment_status AS ENUM('employed','self-employed','unemployed');

CREATE TABLE IF NOT EXISTS users (
  full_name VARCHAR(200),
  yearly_salary INT,
  -- current_status ENUM('employed','self-employed','unemployed') -- MySQL syntax
  current_status employment_status -- postgresql syntax
);