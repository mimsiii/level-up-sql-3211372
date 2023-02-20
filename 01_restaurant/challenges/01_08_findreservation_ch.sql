-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

select r.*, c.firstname
from customers c
join reservations r
on c.customerid=r.customerid
where c.firstname like 'st%'
order by r.date desc