create database quan_ly_ban_hang;

use quan_ly_ban_hang;

create table customer(
	c_id int primary key ,
	`name` varchar(50),
    c_age tinyint
);

create table `order`(
	o_id int primary key,
    c_id int,
    o_date datetime,
    o_total_price int,
    foreign key (c_id) references customer (c_id)
);

create table product(
	p_id int primary key,
    p_name varchar(50),
    p_price int
);

create table order_detail(
	o_id int,
    p_id int,
    od_QTY int,
    primary key(o_id,p_id),
    foreign key (o_id) references `order` (o_id),
    foreign key (p_id) references product (p_id)
); 

INSERT INTO `quan_ly_ban_hang`.`customer` (`c_id`, `name`, `c_age`) VALUES ('1', 'Minh Quan', '10');
INSERT INTO `quan_ly_ban_hang`.`customer` (`c_id`, `name`, `c_age`) VALUES ('2', 'Ngoc Oanh', '20');
INSERT INTO `quan_ly_ban_hang`.`customer` (`c_id`, `name`, `c_age`) VALUES ('3', 'Hong Ha ', '50');

INSERT INTO `quan_ly_ban_hang`.`product` (`p_id`, `p_name`, `p_price`) VALUES ('1', 'May Giat', '3');
INSERT INTO `quan_ly_ban_hang`.`product` (`p_id`, `p_name`, `p_price`) VALUES ('2', 'Tu Lanh', '5');
INSERT INTO `quan_ly_ban_hang`.`product` (`p_id`, `p_name`, `p_price`) VALUES ('3', 'Dieu Hoa', '7');
INSERT INTO `quan_ly_ban_hang`.`product` (`p_id`, `p_name`, `p_price`) VALUES ('4', 'Quat', '1');
INSERT INTO `quan_ly_ban_hang`.`product` (`p_id`, `p_name`, `p_price`) VALUES ('5', 'Bep Dien', '2');


INSERT INTO `quan_ly_ban_hang`.`order_detail` (`o_id`, `p_id`, `od_QTY`) VALUES ('1', '1', '3');
INSERT INTO `quan_ly_ban_hang`.`order_detail` (`o_id`, `p_id`, `od_QTY`) VALUES ('1', '3', '7');
INSERT INTO `quan_ly_ban_hang`.`order_detail` (`o_id`, `p_id`, `od_QTY`) VALUES ('1', '4', '2');
INSERT INTO `quan_ly_ban_hang`.`order_detail` (`o_id`, `p_id`, `od_QTY`) VALUES ('2', '1', '1');
INSERT INTO `quan_ly_ban_hang`.`order_detail` (`o_id`, `p_id`, `od_QTY`) VALUES ('3', '1', '8');
INSERT INTO `quan_ly_ban_hang`.`order_detail` (`o_id`, `p_id`, `od_QTY`) VALUES ('2', '5', '4');
INSERT INTO `quan_ly_ban_hang`.`order_detail` (`o_id`, `p_id`, `od_QTY`) VALUES ('2', '3', '3');

-- Hi???n th??? c??c th??ng tin  g???m oID, oDate, oPrice c???a t???t c??? c??c h??a ????n trong b???ng Order
select `order`.o_id, `order`.o_date, `order`.o_total_price from `order`;

-- Hi???n th??? danh s??ch c??c kh??ch h??ng ???? mua h??ng, v?? danh s??ch s???n ph???m ???????c mua b???i c??c kh??ch
select customer.c_id, customer.name, customer.c_age, product.p_id, product.p_name, product.p_price from customer
join `order` on customer.c_id = `order`.c_id
join order_detail on `order`.o_id = order_detail.o_id
join product on order_detail.p_id = product.p_id; 

-- Hi???n th??? t??n nh???ng kh??ch h??ng kh??ng mua b???t k??? m???t s???n ph???m n??o
select customer.c_id, customer.name, customer.c_age from customer
left join `order` on customer.c_id = `order`.c_id;





