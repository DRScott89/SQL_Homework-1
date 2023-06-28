-- 1.) How many actors are there with the last name ‘Wahlberg’?
-- ANSWER: 2

select count(last_name)
from actor 
where last_name like 'Wahlberg';


-- 2.) How many payments were made between $3.99 and $5.99?
-- ANSWER: 1

select count(amount)
from payment
where amount between 3.99 and 5.99;

-- 3.) What film does the store have the most of? (search in inventory)
-- ANSWER: Crossroad Casualties, Shock Cabin, Ridgemont Submarine, Greatest North, Moon Bunch, Storm Happiness, Dinausaur Secretary, 
-- Mockingbird Hollywood, Beverly Outlaw, Saturday Lambs, Roses Treasure, Academy Dinosaur, Scalawag Duck, Goodfellas Salute, Rocketeer Mother, 
-- Operation Operation, Apache Divine, Giant Troopers, Cupboard Sinners, Pity Bound, Cat Coneheads, Muscle Bright, Harry Idaho, Confidential Interview, 
-- Dynamite Tarzan, Butterfly Chocolat, Horror Reign, Deer Virginian, Dogma Family, Sweethearts Suspects, Titans Jerk, Invasion Cyclone, Loathing Legally,
-- Torque Bound, Primary Glass, Spy Mile, Seabiscuit Punk, Virginian Pluto, Hustler Party, Heavyweights Beast, telemark Heartbreakers, Sting Personal, Forward Temple, 
-- Trip Newton, Network Peak, Family Sweet, Zorro Ark, Gleaming Jawbreaker, Bound Cheaper, Curtain Videotape, Gilmore Boiled, Wife Turn, Garden Island, Married Go
-- Boogie Amelie, Juggler Hardly, Grit Clockwork, Pulp Beverly, Lose Inch, Streetcar Intentions, Swarm Gold, Expendable Stallion, Dancing Fever, Bingo Talented, Hobbit Alien, 
-- Innocent Usual, Bucket Brotherhood, Frost Head, Rugrats Sheakpeare, Kiss Glory, Rush Goodfellas, Metropolis Coma

select film_id, count(film_id)
from inventory 
group by film_id 
order by count desc;

-- 4.) How many customers have the last name ‘William’? 
-- ANSWER: 0
select count(last_name)
from customer
where last_name like 'William';

-- 5.) What store employee (get the id) sold the most rentals? 
-- ANSWER: Staff ID: 2
select staff_id, count(rental_id)
from payment 
group by staff_id 
order by count desc;

-- 6.) How many different district names are there? 
-- ANSWER: 378
select district, count(district)
from address
group by district 
order by count desc;

-- 7.) What film has the most actors in it? (use film_actor table and get film_id)
-- ANSWER: 508 - Lambs Cincinatti
select film_id, count(actor_id)
from film_actor fa 
group by film_id 
order by count desc;

-- 8.) From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
-- ANSWER: 13
select count(last_name)
from customer
where last_name like '%es' and store_id = 1;

-- 9.) How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--     with ids between 380 and 430? (use group by and having > 250)
-- ANSWER: 11
select count(distinct amount) 
from payment
where customer_id between 380 and 430;
group by rental_id > 250
order by count;

-- 10.) Within the film table, how many rating categories are there? And what rating has the most
--movies total?
--ANSWER: PG-13
select rating, count(film_id)
from film 
group by rating 
order by count desc;










