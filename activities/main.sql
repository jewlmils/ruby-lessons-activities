CREATE TABLE students(
	id				integer							PRIMARY KEY,
	first_name		character varying(100)			NOT NULL,
	middle_name		character varying(100)			NOT NULL,
	last_name		character varying(100)			NOT NULL,
	age				integer,
	location		text
);

INSERT INTO students(id, first_name, middle_name, last_name, age, location)
VALUES
(1, 'Emily', 'Grace', 'Thompson', 24, 'Manila'),
(2, 'Benjamin', 'James', 'Mitchell', 27, 'Quezon City'),
(3, 'Sophia', 'Marie', 'Rodriguez', 22, 'Cebu City'),
(4, 'Alexander', 'David', 'Williams', 30, 'Davao City'),
(5, 'Olivia', 'Rose', 'Carter', 26, 'Cagayan de Oro'),
(6, 'Lucas', 'Michael', 'Anderson', 29, 'Baguio City');

UPDATE students
SET first_name = 'Ivan', middle_name = 'Ingram', age = 25, last_name = 'Howard'
WHERE id = 1;

DELETE FROM students
WHERE id = 6;

-- counts of all students

--SELECT COUNT(id) FROM students
--SELECT * FROM students WHERE location = 'Manila'
--SELECT AVG(age) FROM students
--SELECT age FROM students ORDER BY age DESC

--SELECT * FROM students ORDER BY id;

--* JOINS ACTIVITY
CREATE TABLE research_papers (
  id integer PRIMARY KEY,
  student_id integer NOT NULL,
  grade character varying(1) CHECK (grade IN ('A', 'B', 'C', 'D', 'E', 'F', NULL)),
  FOREIGN KEY (student_id) REFERENCES students(id)
);

-- Insert 10 records to the new table 
-- 2 students should have more than 1 research paper 
-- 2 students should have 1 ungraded (NULL) research paper
INSERT INTO research_papers (id, student_id, grade)
VALUES
  (1, 1, 'A'),
  (2, 2, 'B'),
  (3, 3, NULL),
  (4, 4, 'A'),
  (5, 5, 'C'),
  (6, 1, 'A'),
  (7, 1, NULL),
  (8, 2, 'D'),
  (9, 3, 'E'),
  (10, 2, 'B');

SELECT s.id, s.first_name, s.last_name, r.id, r.grade 
FROM students s JOIN research_papers r
ON s.id = r.student_id;

--TODO Query all students with multiple research papers
SELECT s.first_name, s.last_name, COUNT(r.id)
FROM students s JOIN research_papers r
ON s.id = r.student_id
GROUP BY s.first_name, s.last_name, s.id
HAVING COUNT(r.id) > 1;

--TODO Query all students with ungraded research papers
SELECT s.first_name, s.last_name, r.id, r.grade
FROM students s JOIN research_papers r
ON s.id = r.student_id
WHERE r.grade IS NULL;