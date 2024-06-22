-- Create a list of books to feature in an exhibit.

-- Make a pick list of books published from 1890-1899 
-- which are not currently checked out.
select * from books where published>=1890 and published<=1899;
select bookid from books where published>=1890 and published<=1899;

--didn't work
select books.title from books 
join loans on books.bookid=loans.bookid
where books.published>=1890 and books.published<=1899
and loans.returneddate is not null order by books.title;

--wrong as this will include
select books.title from books 
where books.published>=1890 and books.published<=1899
and bookid not in (select bookid from loans where loans.returneddate is null)
order by books.title;