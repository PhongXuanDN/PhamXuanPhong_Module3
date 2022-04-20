create database manage_teacher;

use manage_teacher;

create table class(
id int,
`name` varchar(50)
);
select * from class;
insert into class(id,name) values (1,"2a"), (1,"2b") ,(1,"2c") ,(1,"2e");


use manage_teacher;
create table teacher(
id int ,
`name` varchar(50),
age int,
country varchar(100)
);
select * from teacher;
delete from teacher where id = 1;
insert into teacher(id,name,age,country) values (1,"Phong",23, "Da Nang"), 
(2,"Phong",23, "Da Nang"),(3,"Phong",23, "Da Nang");


SET SQL_SAFE_UPDATES = 0;
update teacher set `name` = "xuan" where id = 2;
drop table teacher;