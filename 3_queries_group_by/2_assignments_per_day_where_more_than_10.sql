SELECT day, COUNT(day) AS "total assignments"
FROM assignments
GROUP BY day
HAVING COUNT(day) >= 10
ORDER BY day;