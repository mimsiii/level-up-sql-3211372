-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

select * from customers
where firstname='Loretta' and lastname='Hundey'

insert into orders 
  (CustomerID,OrderDate)
values
  (70,'2022-09-20 14:00:00')

select * from orders
where CustomerID = 70

insert into OrdersDishes
  (OrderID,DishID)
values
  (1001,(select DishID from Dishes where Name='House Salad')),
  (1001,(select DishID from Dishes where Name='Mini Cheeseburgers')),
  (1001,(select DishID from Dishes where Name='Tropical Blue Smoothie'))

select * from OrdersDishes
where OrderID=1001

select sum(d.price) as price
from OrdersDishes o
join Dishes d
on d.DishID=o.DishID
where o.OrderID=1001
