-- first sql statement ... CREATE TABLE
-- then followed by INSERT INTO ...
-- UPDATE ...
-- finally DETELE ...

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

SELECT COUNT(id) FROM students

SELECT * FROM students WHERE location = 'Manila'

SELECT AVG(age) FROM students

SELECT age FROM students ORDER BY age DESC
