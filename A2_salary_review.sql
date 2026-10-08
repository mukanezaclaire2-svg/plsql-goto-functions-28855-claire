-- ============================================
-- A2 - SALARY REVIEW
-- PL/SQL GOTO STATEMENT
-- ============================================

SET SERVEROUTPUT ON;

DECLARE
    v_salary NUMBER := 600000;
    v_message VARCHAR2(100);
BEGIN

    IF v_salary >= 700000 THEN
        GOTO high_salary;
    ELSIF v_salary >= 500000 THEN
        GOTO medium_salary;
    ELSE
        GOTO low_salary;
    END IF;

    <<high_salary>>
    v_message := 'High salary - Excellent';
    GOTO display_result;

    <<medium_salary>>
    v_message := 'Medium salary - Good';
    GOTO display_result;

    <<low_salary>>
    v_message := 'Low salary - Needs review';

    <<display_result>>
    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary || ' RWF');
    DBMS_OUTPUT.PUT_LINE('Review: ' || v_message);

END;
/