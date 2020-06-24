-- SELECT id, name, day, chapter
-- FROM (SELECT  count(id)
--     FROM assistance_requests
--     GROUP BY assignment_id
--     ORDER BY assignment_id ASC) AS "number_id" 
--       JOIN assignments ON assistance_requests.assignment_id = assignments.id


SELECT assignments.id, assignments.name, assignments.day, assignments.chapter, count(assistance_requests.id)
FROM assignments JOIN assistance_requests ON assistance_requests.assignment_id = assignments.id
GROUP BY assignments.id
ORDER BY count(assistance_requests.id) DESC;