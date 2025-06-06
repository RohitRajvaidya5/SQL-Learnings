-- Select all the entries in a table
SELECT *
FROM employees;

-- Creating a table

CREATE TABLE employees (
    employee_id    NUMBER(6) PRIMARY KEY,
    first_name     VARCHAR2(20),
    last_name      VARCHAR2(25) NOT NULL,
    email          VARCHAR2(50) UNIQUE,
    hire_date      DATE NOT NULL,
    salary         NUMBER(8, 2),
    department_id  NUMBER(4)
);

CREATE TABLE persons (
    first_name     VARCHAR2(20),
    last_name      VARCHAR2(25) NOT NULL
);

-- Inserting Values

INSERT INTO employees (
    employee_id, first_name, last_name, email, hire_date, salary, department_id
) VALUES (
    1001, 'John', 'Doe', 'john.doe@example.com', TO_DATE('2023-05-01', 'YYYY-MM-DD'), 55000.00, 10
);


-- Update the table by conditions
UPDATE employees
SET FIRST_NAME = 'Alfred Schmidt', LAST_NAME= 'Frankfurt'
WHERE EMPLOYEE_ID = 1002;


-- Delete the column or table
DELETE FROM employees
WHERE EMPLOYEE_ID = 1001;

-- Delete Table
DROP TABLE persons;


-- Fetch first 3 rows
SELECT *
FROM employees
ORDER BY employee_id
FETCH FIRST 3 ROWS ONLY;

-- Like in oracle SQL
SELECT *
FROM employees
WHERE email LIKE '%jane%';