DECLARE
c_id staff.id%TYPE;
c_name staff.name%TYPE;
CURSOR c_staff IS
	SELECT id,name FROM staff;
BEGIN
	OPEN c_staff;
	LOOP
		FETCH c_staff INTO c_id,c_name;
		EXIT WHEN c_staff%notfound;
		dbms_output.put_line(c_id||' '||c_name);
	END LOOP;
	CLOSE c_staff;
END;

SELECT * FROM staff;
