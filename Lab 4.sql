﻿--Question 1
select city
from agents
where aid in (	select aid
		from orders
		where cid in (select cid 
			      from customers
			      where name = 'Basics')
	      )

--Question 2
select distinct pid
from orders
where aid in (	select aid 
		from orders
		where cid in (	select cid
				from customers
				where city = 'Kyoto')
	      )

--Question 3
select cid, name
from customers
where cid not in(	select cid 
			from orders
			where aid = 'a03')

--Question 4
select cid, name
from customers
where cid in(	select cid 
		from orders 
		where cid in (	select cid 
				from orders
				where pid = 'p01')
			and pid = 'p07'
	    )

--Question 5
select distinct pid 
from orders
where cid in (	select cid 
		from orders
		where aid = 'a03')
		
--Question 6
select name, discount
 from customers
 where cid in (select distinct cid
		from orders
		where aid in (select aid 
				from agents
				where city = 'Dallas'
				 or city = 'Duluth')
		)

--Question 7
select cid 
from customers
where discount in (	select discount 
			from customers
			where cid in (	select cid 
					from customers
					where city = 'Dallas'
					 or city = 'Kyoto')
			)
		 





