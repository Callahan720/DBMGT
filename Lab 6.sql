--Question 1 (city with most individual products)
select name, city 
from customers
where city in (	select city
		from products
		order by quantity desc
		limit 1)

--Question 2 (city with most total products)
select name, city 
from customers
where city in (	select city
		from products
		group by city
		order by sum(quantity) desc
		limit 1)

--Question 3
select pid
from products
where priceUSD > (select avg(priceUSD)
		  from products)

--Question 4
select c.name, o.pid, o.dollars
from orders o,
     customers c
where c.cid = o.cid
order by dollars desc

--Question 5
select c.name, sum(o.dollars)
from orders o,
     customers c
where c.cid = o.cid
group by c.cid
order by c.name

--Question 6
select c.name, p.name, a.name
from orders o,
     agents a,
     products p,
     customers c
where o.aid = a.aid
  and p.pid = o.pid
  and c.cid = o.cid
  and a.city ='New York'


--Question 7
select o.ordno, o.dollars as "ListedOrderTotal", ((p.priceUSD * o.qty) * ((100 - c.discount)/100))::money as "CalculatedOrderTotal", ((p.priceUSD * o.qty) * ((100 - c.discount)/100)) = o.dollars as "isOrderDollarsCorrect"
from orders o,
     agents a,
     products p,
     customers c
where o.aid = a.aid
  and p.pid = o.pid
  and c.cid = o.cid



