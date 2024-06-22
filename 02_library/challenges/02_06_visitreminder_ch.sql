-- Prepare a report of the library patrons
-- who have checked out the fewest books.

select patrons.firstname,patrons.email, count(loanid) as booksissued from patrons 
join loans on patrons.patronid=loans.patronid
group by patrons.patronid order by booksissued asc;

select 
select * from patrons 
join loans on patrons.patronid=loans.patronid
group by patrons.patronid;