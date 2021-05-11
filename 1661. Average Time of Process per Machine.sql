SELECT a.machine_id AS machine_id, ROUND(SUM(a.timestamp-b.timestamp)/COUNT(DISTINCT a.process_id), 3) AS processing_time
FROM Activity a
JOIN Activity b
ON a.machine_id = b.machine_id AND a.process_id = b.process_id AND a.activity_type = 'end' AND b.activity_type = 'start'
GROUP BY a.machine_id;

-- can use AVG, everything else is the same
SELECT a.machine_id AS machine_id, ROUND(AVG(a.timestamp-b.timestamp), 3) AS processing_time
FROM Activity a
JOIN Activity b
ON a.machine_id = b.machine_id AND a.process_id = b.process_id AND a.activity_type = 'end' AND b.activity_type = 'start'
GROUP BY a.machine_id;