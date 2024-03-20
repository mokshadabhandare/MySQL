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