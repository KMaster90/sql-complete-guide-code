-- CREATE TABLE users (
--   full_name VARCHAR(300) NOT NULL,
--   yearly_salary INT CHECK (yearly_salary > 0 AND yearly_salary !=1),
--   -- CHECK (yearly_salary < another_column)
-- )

UPDATE users SET full_name = 'Mario Rossi' WHERE full_name = 'MArio Rossi';
UPDATE users SET yearly_salary = NULL WHERE full_name = 'Mario Rossi';

ALTER TABLE users ADD CONSTRAINT yearly_salary_positive CHECK (yearly_salary > 0)