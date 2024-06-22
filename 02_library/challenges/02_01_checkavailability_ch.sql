-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.
select count() from books where title='Dracula';
select count() from loans where 
bookid in (select bookid from books where title='Dracula')
and returneddate is null;

select (
(select count() from books where title='Dracula')-
(select count() from loans where 
bookid in (select bookid from books where title='Dracula')
and returneddate is null)
);