\c modelling_sql

CREATE TABLE students(student_id SERIAL PRIMARY KEY,
name VARCHAR(50));

CREATE TABLE professors(professor_id SERIAL PRIMARY KEY,
name VARCHAR(50),
department VARCHAR(100));

CREATE TABLE courses(course_id SERIAL PRIMARY KEY,
name VARCHAR(50));

CREATE TABLE tests(grade INT,
student_id INT NOT NULL REFERENCES students(student_id),
course_id INT NOT NULL REFERENCES courses(course_id),
PRIMARY KEY (student_id, course_id));

CREATE TABLE classes(student_id INT NOT NULL REFERENCES students(student_id),
professor_id INT NOT NULL REFERENCES professors(professor_id),
PRIMARY KEY (student_id, professor_id));


CREATE TABLE teaching_assignments(course_id INT NOT NULL REFERENCES courses(course_id),
professor_id INT NOT NULL REFERENCES professors(professor_id),
PRIMARY KEY (professor_id, course_id));

