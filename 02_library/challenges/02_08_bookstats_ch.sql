-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

select title, count(distinct(title)) as titles_count, published
from books
group by published
order by titles_count desc 

-- Report 2: Show the five books that have been
-- checked out the most.

select count(l.loanid) as cnt, b.title
from loans l
join books b
on l.bookid=b.bookid
group by b.title
order by cnt desc
limit 5