SELECT cohorts.name, count(assignment_submissions.id) AS "total Submissions"
FROM assignment_submissions 
JOIN students ON student_id = students.id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY cohorts.name DESC;