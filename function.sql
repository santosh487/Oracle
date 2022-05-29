CREATE OR REPLACE FUNCTION adder(a IN NUMBER, b IN NUMBER )
RETURN NUMBER
IS
addition NUMBER;
BEGIN
	addition := a+b;
	RETURN addition;
END;
/

DECLARE
	n3 NUMBER;
BEGIN
	n3 := adder(11,33);
	dbms_output.put_line(n3);
END;

BEGIN
  Dbms_Output.put_line(adder(40,50)) ;
END;


-----------------------------------------------------
CREATE OR REPLACE FUNCTION get_tax_amount(f_salary number)
RETURN NUMBER
IS
BEGIN
	RETURN (f_salary * 1/ 100);
END;

SELECT get_tax_amount(1000) FROM dual;

SELECT first_name, salary,get_tax_amount(salary) FROM hr.employees;









