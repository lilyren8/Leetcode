SELECT ROUND(AVG(customer_pref_delivery_date = order_date) *100, 2) AS immediate_percentage
FROM Delivery;
-- true is 1, false is 0

--can also use sum
SELECT ROUND(SUM(customer_pref_delivery_date = order_date)/COUNT(*) *100, 2) AS immediate_percentage
FROM Delivery;
