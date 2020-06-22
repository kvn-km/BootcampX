SELECT students.name AS "Name", AVG(assignment_submissions.duration) AS "Average Duration"
FROM students JOIN assignment_submissions ON students.id = student_id
WHERE students.end_date IS NULL
GROUP BY students.name
ORDER BY "Average Duration" DESC;