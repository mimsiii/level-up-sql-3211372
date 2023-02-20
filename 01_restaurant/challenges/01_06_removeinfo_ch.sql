-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

SELECT * 
FROM customers c
join reservations r
on c.CustomerID = r.CustomerID
where c.FirstName = 'Norby' 
  and r.Date > '2022-07-24' 

delete from Reservations
where ReservationID = 2000

SELECT * from Reservations
where date > '2022-07-24'