-- Prepare a report of the library patrons
-- who have checked out the fewest books.
select count(l.loanid) as fewest_books_count,
  p.FirstName,p.Email
from loans l 
join patrons p
on l.patronid = p.patronid
where l.returneddate is not null
group by p.patronid
order by fewest_books_count 
LIMIT 15