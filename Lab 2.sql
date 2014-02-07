--Question 1
select name, city
from agents
where name = 'Smith'

--Question 2
select pid, name, quantity
from products
where priceUSD > 1.25

--Question 3
select ordno, aid
from orders

--Question 4
select name, city
from customers
where city = 'Dallas'

--Question 5
select name
from agents
where city != 'New York'
 and city != 'Newark'

--Question 6
select *
from products
where priceUSD >= 1.00

--Question 7
select *
from orders
where mon = 'jan'
 or mon = 'mar'

--Question 8
select *
from orders
where mon = 'feb'
 and dollars < 100

 --Question 9
 select *
 from orders
 where cid = 'c001'

 