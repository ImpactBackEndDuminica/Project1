drop TABLE IF EXISTS Students;

CREATE TABLE STUDENTS(
	id serial PRIMARY KEY,
	first_name varchar(50) NOT NULL,
	last_name varchar(50) NOT NULL,
	email varchar(100) NOT NULL UNIQUE,
	birthday date  NOT NULL,
	grade decimal(4,2) CHECK(grade between 1 and 10),
	graduated BOOLEAN default false,
	teacher_full_name varchar(100) NOT NULL,
	created_at timestamp DEFAULT CURRENT_TIMESTAMP
)