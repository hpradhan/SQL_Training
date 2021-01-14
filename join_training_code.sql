-- examples to use in SQL fiddle

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

-- left right example 
-- Goal: To see that right and left joins work similarly but are based on order
select *
from Organizers 
left join volunteers using(turf_id);
