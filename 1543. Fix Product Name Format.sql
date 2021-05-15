SELECT LOWER(TRIM(product_name)) AS product_name, LEFT(sale_date, 7) AS sale_date, COUNT(product_name) AS total
FROM Sales
GROUP BY 1, 2
ORDER BY 1, 2;