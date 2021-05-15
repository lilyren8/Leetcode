-- if the sum of 2 sides is greater than the 3rd side, then can form a triangle
SELECT *, IF(x + y > z AND x + z > y AND y + z > x, 'Yes', 'No') AS triangle
FROM triangle;