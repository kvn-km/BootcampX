SELECT cohorts.name, COUNT(students.id) AS "Student Count"
FROM cohorts JOIN students on students.cohort_id = cohorts.id
GROUP BY cohorts.name
HAVING COUNT(students.id) >= 18
ORDER BY COUNT(students.id);