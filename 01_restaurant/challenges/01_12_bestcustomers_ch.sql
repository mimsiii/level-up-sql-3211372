-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.

select count(orderid) as placed_orders, FirstName, LastName, Email
from Orders o
join Customers c
on o.CustomerID = c.CustomerID
group by o.customerid
order by placed_orders desc
limit 15