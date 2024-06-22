-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

select * from customers where LastName in
 ('Stevensen', 'Stephensen', 'Stevenson', 'Stephenson', 'Stuyvesant');

select * from Reservations where CustomerID in (select CustomerID from customers where LastName in
 ('Stevensen', 'Stephensen', 'Stevenson', 'Stephenson', 'Stuyvesant'))
 and partySize=4 and date >= '2022-06-14';

select * from customers 
join Reservations on Reservations.CustomerID=customers.CustomerID
where customers.LastName in
 ('Stevensen', 'Stephensen', 'Stevenson', 'Stephenson', 'Stuyvesant')
and Reservations.partySize=4 and Reservations.date >= '2022-06-14'
