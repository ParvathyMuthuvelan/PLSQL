DECLARE
N NUMBER;
BEGIN
N:=10;
IF N<5 THEN
DBMS_OUTPUT.PUT_LINE('ENTERED NUMBER IS LESS THAN 5');
ELSE
DBMS_OUTPUT.PUT_LINE('ENTERED NUMBER IS GREATER THAN 5');
END IF;
END;