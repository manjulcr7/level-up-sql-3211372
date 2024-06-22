-- Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).
-- Create a report showing appetizers and beverages.
-- Create a report with all items except beverages.
select * from dishes order by price desc;
select * from dishes where Type in ('Appetizer','Beverage');
select * from dishes where Type not in ('Beverage');