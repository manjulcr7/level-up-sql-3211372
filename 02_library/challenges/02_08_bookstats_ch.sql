-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.
select count(distinct(title)) as pubcount,published,
group_concat(distinct(title)) from books 
group by published
order by pubcount desc;

select * from books where published=1911;
-- Report 2: Show the five books that have been
-- checked out the most.
select books.title, count(loans.loanid) as checkoutcount from books
join loans on loans.bookid=books.bookid
group by books.title
order by checkoutcount desc;
