SELECT DISTINCT title
FROM Content AS c
JOIN TVProgram AS t
ON c.content_id = t.content_id
WHERE c.Kids_content = 'Y' AND c.content_type = 'Movies' AND LEFT(t.program_date, 7) = '2020-06';