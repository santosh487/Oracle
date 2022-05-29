SELECT * FROM staff;

ALTER TABLE staff ADD salary number(2);

UPDATE staff SET salary = 50 WHERE id =1;
UPDATE staff SET salary = 40 WHERE id =2;
UPDATE staff SET salary = 25 WHERE id =3;
UPDATE staff SET salary = 60 WHERE id =4;
UPDATE staff SET salary = 45 WHERE id =5;
UPDATE staff SET salary = 99 WHERE id =6;
UPDATE staff SET salary = 90 WHERE id =7;


DECLARE
v_name staff.name%TYPE;
v_sal staff.salary%TYPE;
BEGIN
	SELECT name, salary INTO v_name,v_sal FROM staff WHERE id = 0;
	dbms_output.put_line('Name: '||v_name ||' and salary: '||v_sal);
EXCEPTION
	WHEN no_data_found THEN
		dbms_output.put_line('No records founds');
	WHEN too_many_rows THEN
		dbms_output.put_line('More than 1 records found');
	WHEN OTHERS THEN
		dbms_output.put_line('Some error found');
END;
