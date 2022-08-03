create database Ecommerce
use Ecommerce

create table product(product_id int identity(1,1) primary key, product_name nvarchar(20), product_price numeric(18,2),product_category nvarchar(20))

insert into product values('Phone', 20000,'electronics')
insert into product values('Induction', 1800,'electronics')
insert into product values('Chair', 2000,'furniture')
insert into product values('Bread', 45,'grocery')
insert into product values('Rice', 80,'grocery')
insert into product values('Table', 2000,'furniture')
insert into product values('Butter', 45,'grocery')
insert into product values('Fan', 2000,'electronics')
insert into product values('Bed', 12000,'furniture')
insert into product values('drawer', 1200,'furniture')

select * from product

select count(*) from product

select max(product_price) from product

select min(product_price) from product

select product_category, sum(product_price)as Price from product group by product_category order by Price desc

select product_category, count(product_price) as number from product group by product_category having count(product_price)=3

create table customer(customer_id int identity(1,1) primary key, customer_name nvarchar(20), phone_number nvarchar(10),address nvarchar(25))

insert into customer values('Ankit','8888888888','delhi')
insert into customer values('Bob','8888889999','pune')
insert into customer values('charlie','8888899999','pune')
insert into customer values('David','8888889999','mumbai')
insert into customer values('Erin','8888999999','kolkata')
insert into customer values('Frank','8888999999','Delhi')
insert into customer values('John','8888999999','Lucknow')
insert into customer values('Joe','8888999999','Pune')
insert into customer values('Joe','8888999999','Pune')
insert into customer values('Karla','8888999999','Mumbai')

select * from customer

select address, count(address) from customer group by address order by address desc

create table orders(
order_no int identity(1000,1) primary key,
product_id int null,
price numeric(18,2),
name nvarchar(20)
CONSTRAINT FK_Product_ID FOREIGN KEY (product_id) REFERENCES Product (product_id)
ON DELETE CASCADE
ON UPDATE CASCADE)


insert into orders values(3,3020,'Ankit')
insert into orders values(7,7000,'Sumit')
insert into orders values(10,20,'bob')
insert into orders values(6,1250,'charlie')
insert into orders values(2,40,'joe')
insert into orders values(4,2500,'jill')
insert into orders values(9,60,'john')
insert into orders values(5,30,'Frank')
insert into orders values(8,20999,'Erin')
insert into orders values(1,1240,'David')
select * from orders

select * from orders order by price desc


