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

 select * from customer;
 select * from orders;
 select * from product;
 select * from order_detail;
 
-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
select id, date, total_price
from orders;
-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách

-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào

-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn. Giá bán của từng loại được tính = odQTY*pPrice)
