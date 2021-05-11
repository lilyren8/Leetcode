SELECT MIN(a.x - b.x) AS shortest
FROM point a
CROSS JOIN point b
WHERE a.x > b.x;

-- can also write as
SELECT MIN(a.x - b.x) AS shortest
FROM point a, point b
WHERE a.x > b.x;