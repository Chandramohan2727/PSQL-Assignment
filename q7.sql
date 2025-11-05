SELECT 
    d.department_name,
    COUNT(e.employee_id) AS total_employees,
    SUM(e.salary) AS total_salary
FROM department d
JOIN employee e ON d.department_id = e.department_id
GROUP BY d.department_name
HAVING COUNT(e.employee_id) >= 2;
