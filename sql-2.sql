CREATE DATABASE college;
use college;

CREATE TABLE student(id int primary key,name varchar(40),class varchar(50),batch int);

CREATE TABLE teacher(id int primary key,name varchar(40),subject varchar(50),department varchar(40),student_id int,foreign key(student_id) references student(id));

INSERT into student(id,name,class,batch)values
                   (1,"Akash","B.tech",2023),
                   (2,"Anjali","BE",2021),
                   (3,"Ciya","MCA",2024);


INSERT into teacher(id,name,subject,department,student_id)values
                   (1,"Joshi Sir","Computer Science","Dept of CS",3),
                   (2,"Kulkarni Mam","Maths","Dept of Math",1),
                   (3,"Rupali Mam","Java","Dept of CS",3),
                   (4,"Kiran Mam","DBMS","Dept of IT",1);


select teacher.id, teacher.name , teacher.subject , teacher.department from teacher
join student on teacher.student_id = student.id where student.class="MCA";

select teacher.id, teacher.name , teacher.subject , teacher.department from teacher
join student on teacher.student_id = student.id where student.class="B.tech";

ALTER TABLE student add column marks varchar(50);

update student set marks=45 where id=1;
update student set marks=40 where id=2;
update student set marks=50 where id=3;

delete from teacher where id=3;

select * from student where marks=50;

select * from teacher where subject="DBMS";

select * from student where marks=45;

select subject from teacher where id=1;

select name from teacher where department="Dept of IT" ;

delete from student where  marks>80;


use college;
alter TABLE student add column subject varchar(50);

update student set subject="Maths" where id=1;
update student set subject="Computer Science" where id=2;
update student set subject="DBMS" where id=3;

SELECT student_id from student INNER JOIN teacher on student.id=teacher.student_id;

SELECT student_id from student INNER JOIN teacher on student.id=teacher.id;

SELECT student_id from student LEFT JOIN teacher on student.id=teacher.id;

SELECT student_id from student RIGHT JOIN teacher on student.id=teacher.id;

SELECT student_id from student RIGHT OUTER JOIN teacher on student.id=teacher.id;

SELECT student_id from student LEFT OUTER JOIN teacher on student.id=teacher.id;

SELECT student.name from student cross join teacher;

SELECT student.name,teacher.name from student cross join teacher;

SELECT t1.name from teacher as t1 join teacher as t2 on t1.name=t2.name;

SELECT t1.name AS teach, t2.name as teach2 from teacher as t1 join teacher as t2 on t1.student_id=t2.id;

SELECT name from student UNION SELECT name from teacher;