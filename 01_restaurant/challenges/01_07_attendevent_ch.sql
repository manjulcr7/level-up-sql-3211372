-- Register a customer for our Anniversary event.

-- The customer 'atapley2j@kinetecoinc.com' will be in
-- attendance, and will bring 3 friends.
SELECT customerid from customers where Email='atapley2j@kinetecoinc.com';
select * from customerResponses;
insert into customerResponses (customerid,partySize) values ((SELECT customerid from customers where Email='atapley2j@kinetecoinc.com'),3);
