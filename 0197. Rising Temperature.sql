-- Join today and yesterday
SELECT a.id FROM Weather a
JOIN Weather b ON a.recordDate = DATE_ADD(b.recordDate, INTERVAL 1 DAY)
WHERE a.Temperature > b.Temperature;