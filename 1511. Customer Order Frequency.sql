SELECT o.customer_id AS customer_id, c.name AS name
FROM Orders AS o
JOIN Product AS p
JOIN Customers As c
ON o.customer_id = c.customer_id AND o.product_id = p.product_id 
GROUP BY o.customer_id
HAVING SUM(CASE WHEN MONTH(o.order_date) = 06 THEN quantity * price END) >= 100
AND SUM(CASE WHEN MONTH(o.order_date) = 07 THEN quantity * price END) >= 100;