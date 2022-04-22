create database chuyen_doi_ERD;

use chuyen_doi_erd;

create table nhacc(
mancc int primary key,
tenncc varchar(50),
diachi varchar(50),
sodienthoai varchar(10)
);

create table phieu_nhap(
so_pn int primary key,
ngaynhap date
);

create table phieu_xuat(
so_px int primary key,
ngayxuat date
);

create table dondh(
sodh int primary key,
ngaydh date
);

create table vat_tu(
ma_vtu int primary key,
ten_vtu varchar(50),
id_phieuxuat int,
id_phieunhap int
);

create table vat_tu_phieu_nhap(
id_mavtu int,
id_phieunhap int,
dgnhap int,
slnhap int,
primary key(id_mavtu, id_phieunhap),
foreign key(id_mavtu) references vat_tu(ma_vtu),
foreign key(id_phieunhap) references phieu_nhap(so_pn) 
);

create table vat_tu_dondh(
id_mavtu int,
id_sodh int,
primary key(id_mavtu, id_sodh),
foreign key(id_mavtu) references vat_tu(ma_vtu),
foreign key(id_sodh) references dondh(sodh) 
);

create table vat_tu_phieu_xuat(
id_sopx int,
id_mavtu int,
dg_xuat int,
sl_xuat int,
primary key(id_sopx, id_mavtu),
foreign key(id_sopx) references phieu_xuat(so_px),
foreign key(id_mavtu) references vat_tu(ma_vtu)
);