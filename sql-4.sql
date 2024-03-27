
select distinct * from student;

select distinct batch from student;

select distinct name from student;


SELECT * FROM student WHERE name LIKE 'A%';

USE college
SELECT * FROM student WHERE name LIKE '%A';

SELECT * FROM student WHERE name LIKE 'C%';

SELECT * FROM student WHERE name LIKE '_k%';

SELECT * FROM student WHERE name LIKE 'A%h';


SELECT * FROM student WHERE batch IN(2021);

SELECT * FROM student WHERE id IN(1,2,3);

DESCRIBE teacher;
DESCRIBE student;


SELECT * from  student WHERE marks BETWEEN 1 AND 2;

SELECT * from  student WHERE marks BETWEEN 40 AND 45;

SELECT * from  student WHERE name BETWEEN "Akash"AND "Anjali";

SELECT * from student where marks is NULL;
SELECT name as "fname" from student;

SELECT marks from student ORDER BY marks DESC;

SELECT marks from student ORDER BY marks ASC;