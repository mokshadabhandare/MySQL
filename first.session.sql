
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
