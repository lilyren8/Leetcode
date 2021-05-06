DELETE FROM Person
WHERE Id NOT IN (
    SELECT t.Id FROM (
        SELECT MIN(Id) AS id FROM Person GROUP BY Email
    ) AS t
);
    