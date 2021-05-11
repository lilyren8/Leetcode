SELECT p.product_name, SUM(o.unit) AS unit
FROM Orders AS o
JOIN Products AS p
ON o.product_id = p.product_id
WHERE LEFT(order_date, 7) = '2020-02' 
GROUP BY o.product_id
HAVING SUM(o.unit) >= 100;

-- don't have to specify table if the column is only present in one table