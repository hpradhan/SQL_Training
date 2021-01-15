-- sample each table
select *
from Volunteers;

select *
from Organizers;

select *
from Regionals;

select *
from Shifts;

-- prompts
-- 1. to see only the volunteers who have shift information
-- 2. To see which volunteers live in what organizer's turf
-- 3. to see which organizer is working with which regional 
-- 3a. To see that right and left joins work similarly but are based on order

-- Answers
-- inner join example 
-- Goal: to see only the volunteers who have shift information
select * 
from volunteers
inner join shifts 
on volunteers.van_id=shifts.van_id;

-- left join example 
-- Goal: To see which volunteers live in what organizer's turf
select *
from volunteers
left join Organizers 
on volunteers.turf_id=Organizers.turf_id;

-- right join example 
-- Goal: To see that right and left joins work similarly but are based on order
select *
from Organizers 
left join volunteers 
on volunteers.turf_id=Organizers.turf_id;


-- left join example
-- goal: to see which organizer is working with which regional
select *
from organizers
left join Regionals
on organizers.region_id=Regionals.region_id

-- switched table order
select *
from Regionals
left join organizers 
on organizers.region_id=Regionals.region_id
