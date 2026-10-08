-- ============================================
-- C1 - FUNCTION: VALIDATE PAYROLL
-- ============================================

CREATE OR REPLACE FUNCTION fn_validate_payroll (
    p_employee_id NUMBER
)
RETURN VARCHAR2
IS
    v_salary employees.salary%TYPE;
    v_employee_name employees.employee_name%TYPE;
BEGIN

    SELECT employee_name, salary
    INTO v_employee_name, v_salary
    FROM employees
    WHERE employee_id = p_employee_id;

    IF v_salary <= 0 THEN
        RETURN 'INVALID: Salary must be greater than zero';

    ELSIF v_salary < 300000 THEN
        RETURN 'WARNING: Salary is below minimum level';

    ELSE
        RETURN 'VALID: Payroll is acceptable';
    END IF;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 'ERROR: Employee not found';

    WHEN OTHERS THEN
        RETURN 'ERROR: Payroll validation failed';
END;
/