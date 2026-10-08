-- ============================================
-- B1 - FUNCTION: ANNUAL SALARY
-- ============================================

CREATE OR REPLACE FUNCTION fn_annual_salary (
    p_monthly_salary NUMBER
)
RETURN NUMBER
IS
BEGIN
    RETURN p_monthly_salary * 12;
END;
/
SELECT fn_annual_salary(450000) AS annual_salary
FROM dual;