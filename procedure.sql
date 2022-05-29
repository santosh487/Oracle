CREATE OR REPLACE PROCEDURE test_procedure
IS
BEGIN
	dbms_output.put_line('Test procedure executed sucessfully');
END;
/

EXEC test_procedure;



CREATE TABLE users (
	id number(10) PRIMARY KEY,
	name varchar2(100)
);

TRUNCATE TABLE users;

SELECT * FROM users;

INSERT INTO users VALUES (101,'santosh');

CREATE OR REPLACE PROCEDURE inseruser
(p_id IN users.id%TYPE ,p_name IN users.name%TYPE)
IS
BEGIN
	INSERT INTO users VALUES (p_id,p_name);
	dbms_output.put_line('Staff added');
END;
/

BEGIN
	inseruser(101,'santosh');
	dbms_output.put_line('record inserted sucessfully');
END;

EXECUTE inseruser(20,'samir');

EXEC inseruser(103,'Umesh');




