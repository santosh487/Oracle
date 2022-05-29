CREATE TABLE staff (
	id NUMBER ,
	name  varchar2(50)
);

SELECT * FROM  staff;

INSERT INTO staff (id,name) VALUES (1,'santosh');
INSERT INTO staff (id,name) VALUES (2,'bibek');
INSERT INTO staff (id,name) VALUES (3,'sagar');
INSERT INTO staff (id,name) VALUES (4,'pujara');
INSERT INTO staff (id,name) VALUES (5,'umesh');
INSERT INTO staff (id,name) VALUES (6,'sapana');
INSERT INTO staff (id,name) VALUES (7,'rojeena');


DECLARE
	c_id staff.id%TYPE := 1;
	c_name staff.name%TYPE;
BEGIN
	SELECT name INTO c_name
	FROM STAFF
	WHERE id=4;

	dbms_output.put_line('Satff Name: '||c_name);
END;


DECLARE
	--constant declaration
	pi constant NUMBER :=3.14;
	--other declaration
	radius NUMBER (5,2);
	area NUMBER (5,2);
BEGIN
	radius := 9.5;
	area := pi*radius*radius;

	dbms_output.put_line('The area is '||area);

END;


------------
DECLARE
x NUMBER :=10;
BEGIN
	LOOP
		dbms_output.put_line(x);
		x := x+10;
		IF x>50 THEN
			EXIT;
		END IF;
	END LOOP;

END;

DECLARE
	a NUMBER :=10;
BEGIN
	WHILE a<20 LOOP
		dbms_output.put_line('value is '||a);
		a := a+1;
	END LOOP ;
END ;

------------
DECLARE
	a NUMBER;
BEGIN
	FOR a IN 10 .. 20 LOOP
		dbms_output.put_line('a: '||a);

	END LOOP;

END ;

DECLARE
	a NUMBER;
BEGIN
	FOR a IN reverse 10 .. 20 LOOP
		dbms_output.put_line(a);

	END LOOP;

END ;

