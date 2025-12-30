
-- =========================
-- TABLE 1: employees
-- =========================
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    salary INT,
    age INT
);

INSERT INTO employees VALUES
(1, 'Amit', 'IT', 50000, 25),
(2, 'Bhavya', 'HR', 40000, 28),
(3, 'Charan', 'IT', 60000, 30),
(4, 'Divya', 'Finance', 45000, 27),
(5, 'Eshan', 'IT', 55000, 35);


-- =========================
-- TABLE 2: orders
-- =========================
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    emp_id INT,
    order_amount INT,
    order_date DATE
);

INSERT INTO orders VALUES
(101, 1, 2000, '2024-01-10'),
(102, 2, 3000, '2024-01-12'),
(103, 1, 1500, '2024-01-15'),
(104, 3, 4000, '2024-01-18'),
(105, 5, 2500, '2024-01-20');


-- =========================
-- LOGICAL OPERATORS
-- =========================

-- AND
SELECT * FROM employees
WHERE department = 'IT' AND salary > 52000;

-- OR
SELECT * FROM employees
WHERE department = 'HR' OR department = 'Finance';

-- NOT
SELECT * FROM employees
WHERE NOT department = 'IT';


-- =========================
-- ARITHMETIC OPERATORS
-- =========================

-- SUM
SELECT SUM(salary) AS total_salary FROM employees;

-- AVG
SELECT AVG(salary) AS average_salary FROM employees;

-- COUNT
SELECT COUNT(*) AS total_employees FROM employees;


-- =========================
-- ORDER BY (2 EXTRA QUERIES)
-- =========================

-- Order employees by salary (Descending)
SELECT * FROM employees
ORDER BY salary DESC;

-- Order orders by order_amount (Ascending)
SELECT * FROM orders
ORDER BY order_amount ASC;
