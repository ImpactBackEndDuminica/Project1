INSERT INTO Students(
	first_name,
	last_name,
	email,
	birthday,
	grade,
	graduated,
	teacher_full_name,
	created_at
)
VALUES(
'Gheorghe',
'Creciunel',
'creciunel.gheorghe@gmail.com',
'2003-08-15',
9.50,
true,
'Dr. Pavel Martinez',
NOW()
)

WITH first_name AS (
	SELECT ARRAY[
	'Ion', 'Maria', 'Patricia', 'Robert', 'Nicolae', 'Mihail', 'Mihaela', 'William', 'Elizabeta', 'David',
	'Richard', 'Alexandru', 'Ion', 'Gabriel', 'Tomas', 'Sara', 'Daniel', 'Matei', 'Pavel', 'Anton', 'Liza',
	'Marc', 'Paul', 'Darius', 'Sanda', 'Andrei', 'Stefan', 'Anastasia', 'Emma', 'Valentin', 'Eugen'
	] AS arr
),
last_name AS (
	SELECT ARRAY[
	'Rusu', 'Ceban', 'Turcanu', 'Cebotari', 'Lungu', 'Sirbu', 'Munteanu', 'Popa', 'Rotari', 'Gutu',
	'Ursu', 'Rosca', 'Melnic', 'Balan', 'Cojocari', 'Grosu', 'Moraru', 'Botnari', 'Cretu', 'Ungureanu'
	] AS arr
),
teachers AS (
	SELECT ARRAY[
	'Dr. Karen Carter',
	'Prof. Michael Cojocari',
	'Dr. Pavel Martinez',
	'Prof. Alexandru Anderson',
	'Dr. Sofia Ursu'  
	] AS arr
)

INSERT INTO Students(
	first_name,
	last_name,
	email,
	birthday,
	grade,
	graduated,
	teacher_full_name,
	created_at
)
SELECT 
	fn.arr[floor(random()*array_length(fn.arr, 1)+ 1)],
	ln.arr[floor(random()*array_length(ln.arr, 1)+ 1)],
	LOWER(
		fn.arr[floor(random()*array_length(fn.arr, 1)+ 1)] ||
		'.' ||
		ln.arr[floor(random()*array_length(ln.arr, 1)+ 1)] ||
		gs || '@university.edu'	
	),
	CURRENT_DATE - (INTERVAL '18 years' + (random()*12*365)::int * INTERVAL '1 day'),
	ROUND ((random() * 9 + 1)::numeric, 2),
	(random() > 0.6),
	t.arr[floor(random()*array_length(t.arr, 1)+ 1)],
	NOW() - (random()*365 * interval '1 day')
FROM generate_series(1, 5000) gs
CROSS JOIN first_name fn
CROSS JOIN last_name  ln
CROSS JOIN teachers t;















