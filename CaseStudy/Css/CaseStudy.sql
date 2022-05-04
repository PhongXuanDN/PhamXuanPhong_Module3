create database quan_ly_khu_nghi_duong;

use quan_ly_khu_nghi_duong;

create table attach_service(
		attach_service_id int primary key,
        attach_service_name varchar(45),
        attach_service_cost double,
        attach_service_unit int,
        attach_service_status varchar(45)
);

create table rent_type(
	rent_type_id int primary key,
    rent_type_name varchar(45),
    rent_type_cost double
);

create table service_type(
		service_type_id int primary key,
        service_type_name varchar(45)
);

create table customer_type(
	customer_type_id int primary key,
    customer_type_name varchar(45)
);

create table `position`(
	positon_id int primary key,
    position_name varchar(45)
);

create table education_degree(
	education_degree_id int primary key,
    education_degree_name varchar(45)
);

create table division(
	division_id int primary key,
    division_name varchar(45)
);

create table `role`(
	role_id int primary key,
    role_name varchar(255)
);

create table user_role(
	role_id int,
    username varchar(255),
    foreign key(role_id) references `role`(role_id),
    foreign key(username) references `user`(
);

create table `user`(
	username varchar(255) primary key,
    `password` varchar(255)
);