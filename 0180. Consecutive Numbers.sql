SELECT DISTINCT a.Num AS ConsecutiveNums
FROM Logs a, Logs b, Logs c
WHERE a.Num = b.Num ANd b.Num = c.Num AND a.Id = b.Id -1 AND b.Id = c.Id - 1;