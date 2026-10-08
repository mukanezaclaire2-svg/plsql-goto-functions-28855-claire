-- ============================================
-- TEST FUNCTIONS
-- ============================================

SET SERVEROUTPUT ON;

DECLARE
    v_annual_salary NUMBER;
    v_years NUMBER;
    v_tax NUMBER;
    v_department VARCHAR2(100);
BEGIN
    -- Test annual salary
    v_annual_salary := fn_annual_salary(450000);

    DBMS_OUTPUT.PUT_LINE(
        'Annual Salary Test: ' || v_annual_salary
    );

    -- Test years of service
    v_years := fn_years_of_service(DATE '2022-03-15');

    DBMS_OUTPUT.PUT_LINE(
        'Years of Service Test: ' || v_years
    );

    -- Test tax
    v_tax := fn_calculate_tax(500000);

    DBMS_OUTPUT.PUT_LINE(
        'Tax Test: ' || v_tax
    );

    -- Test department
    v_department := fn_dept_name(10);

    DBMS_OUTPUT.PUT_LINE(
        'Department Test: ' || v_department
    );
END;
/