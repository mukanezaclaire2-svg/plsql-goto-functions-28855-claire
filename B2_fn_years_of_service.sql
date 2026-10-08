-- ============================================
-- B2 - FUNCTION: YEARS OF SERVICE
-- ============================================

CREATE OR REPLACE FUNCTION fn_years_of_service (
    p_hire_date DATE
)
RETURN NUMBER
IS
BEGIN
    RETURN TRUNC(MONTHS_BETWEEN(SYSDATE, p_hire_date) / 12);
END;
/
SELECT fn_years_of_service(DATE '2022-03-15') AS years_of_service
FROM dual;