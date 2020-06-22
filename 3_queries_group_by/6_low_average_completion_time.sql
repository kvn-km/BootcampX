-- SELECT 
--   students.name AS "Name",
--   AVG(assignment_submissions.duration) AS "Average Duration",
--   AVG(assignments.duration) AS "Average Suggested Duration"
-- FROM assignment_submissions JOIN students ON students.id = student_id
--                             JOIN assignments ON assignments.id = assignment_id
-- GROUP BY students.name
-- HAVING students.end_date IS NULL
-- AND assignments.duration < assignment_submissions.duration
-- ORDER BY "Average Duration" ASC;

SELECT 
  students.name, 
  AVG(assignment_submissions.duration) AS "AVG Completion Duration",
  AVG(assignments.duration) AS "AVG Duration"
FROM students JOIN assignment_submissions ON students.id = assignment_submissions.student_id
              JOIN assignments ON assignments.id = assignment_submissions.assignment_id
WHERE students.end_date IS NULL
GROUP BY students.name
HAVING AVG(assignment_submissions.duration) < AVG(assignments.duration)
ORDER BY "AVG Completion Duration" ASC;