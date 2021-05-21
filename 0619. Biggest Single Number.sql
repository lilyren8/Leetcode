SELECT IFNULL(MAX(num), NULL) AS num
FROM my_numbers
WHERE num IN(
    SELECT *
    FROM my_numbers
    GROUP BY num
    HAVING COUNT(num) = 1
);

-- can use order by desc limit 1 to find the max