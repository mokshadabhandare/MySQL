USE college;
GRANT select on teacher to Kiran;

GRANT select(class) on student to Anjali;

GRANT select,UPDATE on student to Ciya;

REVOKE select,UPDATE on student from Ciya;

start transaction;
use college;

INSERT into student(id,name,class,batch,marks)values
                   (5,"Moksh","B.Arch",2024,75);


start transaction;
update student set marks=85 where id=5;
rollback;
commit;


use first;


CREATE TABLE customer1(id int primary key,cname varchar(40),email varchar(50));

INSERT into customer1(id,cname,email)values(1,"Ashok","ashok1@gmail.com"),
                                          (2,"Namdev","namdev99@gmail.com"),
                                           (3,"Ashwini","ashwini@gmail.com");


CREATE table order1(id int primary key,
                     odate DATE,
                     customer1_id INT,
                     foreign key(customer1_id) references customer1(id));     

INSERT into order1(id,odate,customer1_id)values(101,"20-03-2024",3),
                                             (102,"15-02-2024",1),
                                             (103,"08-01-2024",2);  


SELECT customer1_id from customer1 INNER JOIN order1 on customer1.id=order1.customer1_id;


SELECT customer1_id from customer1 LEFT JOIN order1 on customer1.id=order1.customer1_id;


SELECT customer1_id from customer1 RIGHT JOIN order1 on customer1.id=order1.customer1_id;


SELECT customer1_id from customer1 RIGHT OUTER JOIN order1 on customer1.id=order1.id;