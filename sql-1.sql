create database first;
use first;

CREATE table student (id int primary key,name varchar(40),marks int,age int);


INSERT into student (id,name,marks,age)values
                     (1,"Moksh",80,22),
                     (2,"Manish",95,23);
                     
ALTER TABLE student add column email varchar(50);

UPDATE student set email="moksh@gmail.com" where id=1;
UPDATE student set email="manish@gmail.com" where id=2;

INSERT into student (id,name,marks,age,email)values
                     (3,"Archana",85,22,"archana@gmail.com");


SELECT * from student where marks>80;

SELECT * from student WHERE name="Moksh";

ALTER table student drop column email;

delete from student where  marks>80;