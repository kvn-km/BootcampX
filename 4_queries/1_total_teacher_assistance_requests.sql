SELECT name, COUNT(assistance_requests.*)
FROM assistance_requests JOIN teachers ON teacher_id = teachers.id
WHERE name = 'Waylon Boehm'
GROUP BY name;