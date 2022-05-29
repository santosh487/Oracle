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


CREATE OR REPLACE PACKAGE global_constant IS
  mile_to_km CONSTANT NUMBER := 1.6093;
  km_to_mile CONSTANT NUMBER := 0.6214;
END global_constant;
/

EXEC Dbms_Output.put_line('The total km is: '||20 * global_constant.mile_to_km);
EXEC Dbms_Output.put_line('The total mile is: '||20 * global_constant.km_to_mile);
