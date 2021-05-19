SELECT s.buyer_id AS buyer_id
FROM Sales AS s
JOIN Product AS p
ON s.product_id = p.product_id
GROUP BY s.buyer_id
HAVING SUM(p.product_name = 'S8') > 0 AND SUM(p.product_name = 'iPhone') = 0;

-- in the having need to use aggregate function 