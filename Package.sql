CREATE OR REPLACE PACKAGE manage_employees IS
  PROCEDURE add_emp(p_id NUMBER, p_name varchar2);
  PROCEDURE edit_emp(p_id NUMBER, p_name varchar2);
END manage_employees;
/

CREATE OR REPLACE PACKAGE BODY manage_employees IS
  PROCEDURE add_emp(p_id NUMBER, p_name varchar2) IS
  BEGIN
    Dbms_Output.put_line('Employee Added');
  END add_emp;
  PROCEDURE edit_emp(p_id NUMBER, p_name varchar2) IS
  BEGIN
    Dbms_Output.put_line('Employee Updated');
  END edit_emp;
END manage_employees;
/

EXEC manage_employees.add_emp(101,'santosh');
EXEC manage_employees.edit_emp(501,'khadka');