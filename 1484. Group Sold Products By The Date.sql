SELECT sell_date, COUNT(DISTINCT product) AS num_sold, GROUP_CONCAT(DISTINCT product ORDER BY product) AS products
FROM Activities
GROUP BY sell_date;
-- sorted lexicographically is a generalization of the alphabetical order 
-- GROUP_CONCAT() function returns a string with concatenated non-NULL value from a group
-- GROUP_CONCAT(expr);
