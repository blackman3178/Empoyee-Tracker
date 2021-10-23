SELECT role.id AS "Role ID", role.title AS "Role Title", department.name AS Department, role.salary AS Salary 
FROM role
INNER JOIN department ON role.department_id = department.id
ORDER BY role.id ASC;

SELECT employee.id AS "Employee ID", CONCAT (employee.first_name," ",employee.last_name) AS Employee, role.title AS "Role", department.name AS "Department", role.salary AS "Salary", CONCAT (manager.first_name," ",manager.last_name) AS Manager
FROM employee
LEFT JOIN role ON employee.role_id = role.id
LEFT JOIN department ON role.department_id = department.id
LEFT JOIN employee Manager ON manager.id = employee.manager_id
ORDER BY employee.id ASC;