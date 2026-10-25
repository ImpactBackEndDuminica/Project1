SELECT MAX(grade) as Nota_Maxima,
		min(grade) as Nota_Minima,
		AVG(grade) as Media,
		SUM(grade) as Suma_Notelor
FROM STUDENTS;

SELECT First_Name as Prenume, COUNT(First_name) as Numar_de_persoane
from STUDENTS
GROUP BY First_Name
ORDER BY Numar_de_persoane DESC;
