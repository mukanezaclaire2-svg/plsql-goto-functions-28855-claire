-- ============================================
-- B5 - USING FUNCTIONS IN SQL
-- ============================================

-- Annual salary
SELECT
    employee_id,
    employee_name,
    salary AS monthly_salary,
    fn_annual_salary(salary) AS annual_salary
FROM employees
ORDER BY employee_id;


-- Years of service
SELECT
    employee_id,
    employee_name,
    hire_date,
    fn_years_of_service(hire_date) AS years_of_service
FROM employees
ORDER BY employee_id;


-- Tax calculation
SELECT
    employee_id,
    employee_name,
    salary,
    fn_calculate_tax(salary) AS tax
FROM employees
ORDER BY employee_id;


-- Department name
SELECT
    employee_id,
    employee_name,
    department_id,
    fn_dept_name(department_id) AS department
FROM employees
ORDER BY employee_id;