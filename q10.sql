--INSERT STMTS
INSERT INTO employee (employee_id, employee_name, department_id, salary)
VALUES (201, 'Robert King', 1, 48000);

INSERT INTO employee (employee_id, employee_name, department_id, salary)
VALUES (202, 'Sophia Lee', 2, 52000);

INSERT INTO employee (employee_id, employee_name, department_id, salary)
VALUES (203, 'Harish Kumar', 3, 61000);

INSERT INTO employee (employee_id, employee_name, department_id, salary)
VALUES (204, 'Priya Sharma', 4, 45000);

INSERT INTO employee (employee_id, employee_name, department_id, salary)
VALUES (205, 'Rahul Mehta', 1, 47000);
COMMIT;

--UPDATE STMTS
UPDATE employee SET salary = salary + 2000 WHERE employee_id = 201;
UPDATE employee SET salary = salary + 3000 WHERE employee_id = 202;
UPDATE employee SET salary = salary + 1500 WHERE employee_id = 203;
UPDATE employee SET salary = salary + 2500 WHERE employee_id = 204;
UPDATE employee SET salary = salary + 1000 WHERE employee_id = 205;
ROLLBACK;
