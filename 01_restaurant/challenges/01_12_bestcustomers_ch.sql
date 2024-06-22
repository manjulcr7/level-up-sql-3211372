-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

--find email,fistname,lastname,numberoforders

select count() as numberoforders,customerid from orders
 group by customerid order by numberoforders desc limit 3;

 select customers.email,customers.firstname,customers.lastname,
 customerorders.numberoforders from customers join (select count() as numberoforders,customerid from orders
 group by customerid order by numberoforders desc limit 3) customerorders
 on customers.customerid = customerorders.customerid; 

 select customers.email,customers.firstname,customers.lastname,
 count(orders.orderid) as numberoforders from customers join 
orders
 on customers.customerid = orders.customerid
 group by orders.customerid order by numberoforders desc limit 3; 
