-- need distinct because all duplicated rows will be returned
SELECT DISTINCT a.Email FROM Person AS a
JOIN Person AS b ON a.Email = b.Email
WHERE a.Id <> b.Id;

-- another approach
-- group by emails with count > 1
SELECT Email FROM Person
GROUP BY Email
HAVING COUNT(Email) > 1;