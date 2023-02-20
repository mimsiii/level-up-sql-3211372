-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

select count(LoanID)
from Loans 
where BookID in (select BookID from books where title='Dracula')
  and ReturnedDate is not null