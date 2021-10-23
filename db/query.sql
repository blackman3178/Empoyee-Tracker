SELECT role.id AS "Role ID", role.title AS "Role Title", department.name AS Department, role.salary FROM role
INNER JOIN department ON role.department_id = department.id
ORDER BY role.id ASC;