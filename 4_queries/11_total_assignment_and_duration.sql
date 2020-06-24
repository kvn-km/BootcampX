SELECT assignments.day, count(assignments.*), sum(assignments.duration)
FROM assignments
GROUP BY day
ORDER BY day ASC;