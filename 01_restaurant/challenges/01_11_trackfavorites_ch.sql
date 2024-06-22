-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

select * from customers where FirstName='Cleo';
select dishid from dishes where name in ('Quinoa Salmon Salad');
update customers set favoritedish=(select dishid from dishes where name in ('Quinoa Salmon Salad')) where FirstName='Cleo';