SET SERVEROUTPUT ON;

BEGIN
    GOTO inside_if;

    IF 1 = 1 THEN
        <<inside_if>>
        DBMS_OUTPUT.PUT_LINE('This is inside the IF block.');
    END IF;
END;
/
SET SERVEROUTPUT ON;

BEGIN
    GOTO display_message;

    <<display_message>>
    DBMS_OUTPUT.PUT_LINE('GOTO was fixed successfully.');

END;
/