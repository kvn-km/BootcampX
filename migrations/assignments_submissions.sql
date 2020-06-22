CREATE TABLE assignment_submissions (
 id SERIAL PRIMARY KEY NOT NULL,
 assignment_id INT REFERENCES assignments(id) ON DELETE CASCADE,
 student_id INT REFERENCES students(id) ON DELETE CASCADE,
 duration INT,
 submission_date DATE
)