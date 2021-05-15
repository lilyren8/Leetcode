SELECT DISTINCT a.seat_id
FROM cinema AS a 
JOIN cinema AS b
ON a.free = 1 AND b.free = 1 AND abs(a.seat_id - b.seat_id) = 1 
ORDER BY a.seat_id;