SELECT p.name AS name, COALESCE(SUM(i.rest),0) AS rest, COALESCE(SUM(i.paid), 0) AS paid, COALESCE(SUM(i.canceled),0) AS canceled, COALESCE(SUM(i.refunded),0) AS refunded
FROM Product AS p
LEFT JOIN Invoice As i
ON p.product_id = i.product_id
GROUP BY p.product_id
ORDER BY p.name;

-- need to group by p.product_id not i.product_id because want to show all entries in table p

