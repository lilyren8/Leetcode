SELECT u.name AS name, SUM(t.amount) AS balance
FROM Transactions AS t
JOIN Users AS u
ON t.account = u.account
GROUP BY t.account
HAVING balance > 10000;