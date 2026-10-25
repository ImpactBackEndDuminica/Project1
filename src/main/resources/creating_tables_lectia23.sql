Drop table if exists Students;
Drop table if exists Grades;
Drop table if exists Teachers;
Drop table if exists Students;
Drop table if exists Subjects;
Drop table if exists teachers_subject;

CREATE TABLE STUDENTS(
	id serial PRIMARY KEY,
	first_name varchar(50) NOT NULL,
	last_name varchar(50) NOT NULL,
	birthday date NOT NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE  TABLE Teachers(
	id serial PRIMARY KEY,
	first_name varchar(50) NOT NULL,
	last_name varchar(50) NOT NULL
);
CREATE TABLE Subjects(
	id serial PRIMARY KEY,
	subject_name varchar(50) NOT NULl Unique
);
CREATE TABLE teacher_subject(
id serial PRIMARY KEY,
teacher_id INTEGER NOT NULL,
subject_id INTEGER NOT NULL,
CONSTRAINT fk_teacher 
FOREIGN KEY (teacher_id)
REFERENCES teachers(id)
ON DELETE CASCADE,

CONSTRAINT fk_subject 
FOREIGN KEY (subject_id)
REFERENCES Subjects(id)
ON DELETE CASCADE

);
CREATE TABLE Grades(
id serial PRIMARY KEY,
student_id INTEGER NOT NULL,
teacher_subject_id INTEGER NOT NULL
grade decimal(4,2) NOT NULL CHECK(grade BETWEEN 1 and 10),
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
CONSTRAINT fk_student 
FOREIGN KEY (student_id)
REFERENCES STUDENTS(id)
ON DELETE CASCADE,

CONSTRAINT fk_teacher_subject_id 
FOREIGN KEY (teacher_subject_id)
REFERENCES teacher_subject(id)
ON DELETE CASCADE,

);

