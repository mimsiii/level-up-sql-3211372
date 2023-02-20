-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

select * 
from customers c
join dishes d
on c.favoritedish=d.dishid
where firstname='Cleo' and lastname='Goldwater'

-- custid = 42, dishid = 14

update customers
set FavoriteDish=(select DishID from Dishes 
              where name='Quinoa Salmon Salad')
where CustomerID=42

