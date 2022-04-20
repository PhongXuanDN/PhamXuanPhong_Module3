use demo;

create table student(
id int auto_increment, 
ten varchar(50),
age int,
country varchar(100)
);



Insert into student(id,ten,age,country) values (1,"Phong",23, "Da Nang");

SET SQL_SAFE_UPDATES = 0;
update student set id = 2 where ten = "Phong";

select * from student;

drop table student;

delete from student where id = 2;










