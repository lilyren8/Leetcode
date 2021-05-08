SELECT u.name, IFNULL(SUM(r.distance), 0) AS travelled_distance
FROM Users AS u
LEFT JOIN Rides AS r
ON r.user_id = u.id
GROUP BY r.user_id
ORDER BY travelled_distance DESC, u.name asc;

-- Return the specified value IF the expression is NULL, otherwise return the expression
-- IFNULL(expression, alt_value)