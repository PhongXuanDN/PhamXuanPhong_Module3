create database quanly_banhang;

use quanly_banhang;

create table customer(
cId int auto_increment primary key,
cName varchar(50),
cAge int
);

create table product(
pId int primary key,
pName varchar(50),
pPrice varchar(50)
);

create table o_order(
oId int auto_increment primary key,
cID int,
oDate date,
oTotalPrice int,
foreign key(cID) references customer(cId)
);

create table order_detail(
oId int,
pId int,
od_QTY varchar(50),
primary key(oId,pId),
foreign key(oId) references o_order(oid),
foreign key(pid) references product(pid)
);


