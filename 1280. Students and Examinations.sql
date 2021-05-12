SELECT a.student_id, a.student_name, a.subject_name, IFNULL(COUNT(e.subject_name), 0) AS attended_exams
FROM (SELECT * FROM Students, Subjects) AS a
LEFT JOIN Examinations AS e
ON a.student_id = e.student_id AND a.subject_name = e.subject_name
GROUP BY student_id, subject_name
ORDER BY student_id, subject_name;