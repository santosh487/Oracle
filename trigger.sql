--Database Trigger
CREATE OR REPLACE TRIGGER trigger_name
{BEFORE|AFTER|INSTEAD OF}
{INSERT [OR] UPDATE[OR]DELETE}
[OF col_name]
ON table_name
[FOR EACH ROW]
BEGIN
	Executable-STATEMENT
EXCEPTION
	EXCEPTION-handling-STATEMENT
END;


-----------------------------------
SELECT * FROM regions;

CREATE OR REPLACE TRIGGER regions_insert
AFTER INSERT ON regions
BEGIN
  Dbms_Output.put_line('Record Inserted');
END;

INSERT INTO regions VALUES (5,'Nepal');


SELECT * FROM departments;

SELECT To_Char(SYSDATE,'HH24:MI') FROM dual;

CREATE OR REPLACE TRIGGER restricted_insert
AFTER INSERT ON regions
BEGIN
  IF(To_Char(SYSDATE,'HH24:MI') NOT  BETWEEN '9:00' AND '18:00') THEN
    Raise_Application_Error(-20123,'You can add department only between 9:0 AM and 6:00 PM');
  END IF ;
END;

INSERT INTO departments VALUES(700,'Intern',NULL,NULL);

SELECT * FROM staff;
SELECT To_Char(SYSDATE,'HH24:MI') FROM dual;

INSERT INTO staff VALUES (8,'sunil');
UPDATE staff SET name = 'Shyam' WHERE id=8;
DELETE FROM staff WHERE id = 8;

DROP TRIGGER restricted_dml;

CREATE OR REPLACE TRIGGER restricted_dml
BEFORE INSERT OR UPDATE OR DELETE ON staff
BEGIN
  IF(To_Char(SYSDATE, 'HH24:MI') NOT BETWEEN '9:00' AND '18:00') THEN
      Raise_Application_Error(-20124, 'You can manipulate staff only between 9:00 AM and 6:00 PM. ');
      END IF;
END;





