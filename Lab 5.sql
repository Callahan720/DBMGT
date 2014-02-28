--Question 1
select a.city
from agents a,
     orders o,
     customers c
where c.cid = o.cid
  and o.aid = a.aid
  and c.name = 'Basics'

--Question 2  
select distinct o2.pid
from customers c,
     orders o1,
     orders o2
where o1.cid  = c.cid
  and o1.aid = o2.aid
  and c.city = 'Kyoto'   



--Question 3
select name
from customers
where cid not in (select o.cid
		 from customers c,
		 	orders o
		 where o.cid = c.cid
		 )



--Question 4
select name
from orders o right outer join customers c on o.cid = c.cid
where ordno is null

--Question 5
select distinct c.name, a.name
from customers c,
     agents a,
     orders o
where c.cid = o.cid
  and o.aid = a.aid
  and c.city = a.city


--Question 6
select c.name, a.name, c.city
from customers c,
     agents a
where c.city = a.city

--Question 7
select name, city
from customers
where city in (select city
		from products
		group by city
		order by sum(quantity) asc
		limit 1)



