-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)

select * from customers where email ='smac@kinetecoinc.com';
insert into customers (FirstName,LastName,Email) values
('Sam', 'McAdams' ,'smac@kinetecoinc.com');

select * from Reservations where customerid=101;
insert into Reservations (customerid,date,partysize)
values (101,'2022-08-12 18:00:00',5);
