SELECT IFNULL(ROUND(COUNT(DISTINCT requester_id, accepter_id)/COUNT(DISTINCT sender_id, send_to_id), 2), 0.00) AS accept_rate
FROM RequestAccepted, FriendRequest;

-- DISTINCT requester_id, accepter_id can select the distinct pair

-- Could you write a query to return the acceptance rate for every month?
SELECT IFNULL(ROUND(acp / req, 2), 0.00) AS accept_rate 
FROM (SELECT COUNT(DISTINCT requester_id, accepter_id) AS acp, MONTH(accept_date) AS month FROM RequestAccepted) AS n
JOIN (SELECT COUNT(DISTINCT sender_id, send_to_id) AS req, MONTH(request_date) AS month
FROM FriendRequest) AS d
ON n.month = d.month
GROUP BY n.month;

-- Could you write a query to return the cumulative acceptance rate for every day?
--unresolved