create database ss3_no3;
use ss3_no3;

create table customer(
	id int primary key auto_increment,
    `name` varchar(100),
    age int
);

create table orders(
	id int primary key auto_increment,
    id_customer int,
    `date` date,
    total_price float,
    foreign key (id_customer) references customer (id)
);

create table product (
	id int primary key auto_increment,
    `name` varchar (100),
    price float
);

create table order_detail(
	order_id int,
    product_id int, 
    quantity int,
    primary key(order_id,product_id),
    foreign key (order_id) references orders (id),
    foreign key (product_id) references product (id)
);
 select * from orders