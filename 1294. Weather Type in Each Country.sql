SELECT c.country_name, 
CASE WHEN AVG(weather_state) <= 15 THEN 'Cold' 
WHEN AVG(weather_state) >= 25 THEN 'Hot' 
ELSE 'Warm' END AS weather_type
FROM Countries AS c
JOIN Weather AS w
ON c.country_id = w.country_id
WHERE LEFT(day, 7) = '2019-11'
GROUP BY w.country_id;