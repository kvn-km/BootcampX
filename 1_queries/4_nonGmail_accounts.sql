SELECT id, name, email, cohort_id
FROM students
WHERE email NOT LIKE '%gmail.com'
-- OR phone IS NULL; 
-- Compasss asked for "Get all of the students without a gmail.com OR phone number."
-- That's wrong, they wanted "without gmail AND without phone"
AND phone IS NULL;