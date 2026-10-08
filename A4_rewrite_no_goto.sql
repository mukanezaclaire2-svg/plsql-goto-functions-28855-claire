-- ============================================
-- A4 - REWRITE WITHOUT GOTO
-- ============================================

SET SERVEROUTPUT ON;

DECLARE
    v_number NUMBER := -15;
    v_result VARCHAR2(50);
BEGIN

    IF v_number > 0 THEN
        v_result := 'Positive number';

    ELSIF v_number < 0 THEN
        v_result := 'Negative number';

    ELSE
        v_result := 'Zero';
    END IF;

    DBMS_OUTPUT.PUT_LINE('Number: ' || v_number);
    DBMS_OUTPUT.PUT_LINE('Classification: ' || v_result);

END;
/