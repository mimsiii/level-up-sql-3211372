-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.

select l.duedate, b.title, p.firstname, p.email
from loans l
join patrons p
on l.patronid = p.patronid
join books b
on l.bookid = b.bookid 
where l.duedate = '2022-07-13'
  and l.returneddate is null