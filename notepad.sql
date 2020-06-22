-- students
-- id, name, emails, phone, github, start_date, end_date, cohort_id

-- cohorts
-- id, name, start_date, end_date

-- assignments
-- id, name, content, duration, day, chapter

-- assignment_submissions
-- id, assignment_id, student_id, submission_date, duration

-- JOIN
SELECT 
  students.name, 
  students.start_date as "student start", 
  cohorts.name, 
  cohorts.start_date as "cohort start"
FROM students JOIN cohorts ON cohorts.id = cohort_id
WHERE students.start_date <> cohorts.start_date
ORDER BY cohorts.start_date;

-- HAVING
SELECT students.name as student, count(assignment_submissions.id) as total_submissions
FROM assignment_submissions
JOIN students ON students.id = student_id
GROUP BY students.name
HAVING COUNT(assignment_submissions.id) < 100;