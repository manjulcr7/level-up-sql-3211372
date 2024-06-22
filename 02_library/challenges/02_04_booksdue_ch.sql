-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.

select books.title, loans.duedate,patrons.firstname,patrons.email
from patrons 
join loans on patrons.patronId=loans.patronId
join books on books.BookID=loans.BookID
where loans.duedate='2022-07-13' and loans.returneddate is null;

select * from loans where duedate='2022-07-13' and returneddate is null;