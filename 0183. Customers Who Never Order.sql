SELECT c.Name AS Customers
FROM Customers AS c
LEFT JOIN Orders AS o
ON c.Id = o.CustomerId
WHERE o.CustomerId IS NULL;

--this approach is slower
SELECT c.Name AS Customers
FROM Customers AS c
WHERE c.Id NOT IN (SELECT o.CustomerId FROM Orders AS o);