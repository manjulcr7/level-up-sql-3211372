-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.
Select * from customers where FirstName='Norby';

--64
select * from reservations where CustomerID=64;
select * from reservations
join customers on customers.CustomerID=reservations.CustomerID
where customers.FirstName='Norby' and reservations.date > '2022-07-24';

delete from reservations where ReservationId=2000;