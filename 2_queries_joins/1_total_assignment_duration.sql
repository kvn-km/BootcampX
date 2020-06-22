SELECT SUM(duration)
FROM assignment_submissions 
JOIN students ON student_id = students.id
WHERE students.name = 'Ibrahim Schimmel';

--  below is from compass:
-- SELECT sum(assignment_submissions.duration) as total_duration
-- FROM assignment_submissions
-- JOIN students ON students.id = student_id
-- WHERE students.name = 'Ibrahim Schimmel';