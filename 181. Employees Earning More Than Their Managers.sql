--inner join because only want to get the rows with not null e.ManagerId
SELECT e.Name AS Employee
FROM Employee as e JOIN Employee as m 
ON e.ManagerId = m.Id
WHERE e.Salary > m.Salary;