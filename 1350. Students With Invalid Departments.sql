SELECT s.id AS id, s.name AS name
FROM students AS s
LEFT JOIN Departments AS d
ON s.department_id = d.id
WHERE d.id IS NULL;