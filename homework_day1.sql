-- question 1
-- answer: 2
select *
from actor
where last_name = 'Wahlberg'

-- question 2
-- answer: 5561
select count(*)
from payment p
where amount between 3.99 and 5.99

-- question 3
-- answer: 9
select film_id, count(film_id) as film_count
from inventory i
group by film_id 
order by film_count desc


-- question 4
-- answer: 0
select last_name
from customer c 
where last_name = 'William'


-- question 5
-- answer: staff id # 1
select staff_id, count(staff_id) as count
from rental r 
group by staff_id 
order by count desc


-- question 6
-- answer: 378
select count(distinct district)as count
from address

-- question 7
-- answer: 16 actors in film_id 508
select film_id, count(actor_id) as actors
from film_actor fa 
group by film_id 
order by actors desc

-- question 8
-- answer: 13
select last_name, store_id 
from customer c 
where last_name like '%es'


-- question 9
-- answer: 3
select amount
from payment p 
where customer_id between 380 and 430
group by amount 
having count(payment_id)>250


-- question 10
-- answer: PG-13 with 223 ratings
select rating, count(rating) as total
from film f 
group by rating 
order by total desc
