-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

select * from customers where FirstName='Loretta';
select dishid,price,name from dishes where name in ('House Salad', 'Mini Cheeseburgers',
'Tropical Blue Smoothie');
-- 4,7,20 dishids

select * from orders where customerid=70;
insert into orders (customerid,orderdate) values
(70,'2022-09-20 14:00:00');
--1001 orderid

select * from ordersdishes where orderid=1001;
insert into ordersdishes (orderid,dishid) values
(1001,4),
(1001,7),
(1001,20);

select * from dishes join ordersdishes on
dishes.dishid=ordersdishes.dishid where ordersdishes.orderid=1001;

select sum(price) from dishes join ordersdishes on
dishes.dishid=ordersdishes.dishid where ordersdishes.orderid=1001;

select sum(price) from dishes where name in ('House Salad', 'Mini Cheeseburgers',
'Tropical Blue Smoothie');
