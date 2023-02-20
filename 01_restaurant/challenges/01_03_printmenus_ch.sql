-- Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).
select type, name, price, description from dishes
order by price
-- Create a report showing appetizers and beverages.
select type, name, price, description from dishes
where type in ('Beverage','Appetizer')
-- Create a report with all items except beverages.
select type, name, price, description from dishes
where type <> 'Beverage'
