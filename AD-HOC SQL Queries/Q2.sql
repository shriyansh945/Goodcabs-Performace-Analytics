/*Business Request - 2: Monthly City-Level Trips Target Performance Report
Generate a report that evaluates the target performance for trips at the monthly and city level. 
For each city and month, compare the actual total trips with the target trips and categorise the performance as follows:
If actual trips are greater than target trips, mark it as "Above Target".
If actual trips are less than or equal to target trips, mark it as "Below Target".
Additionally, calculate the % difference between actual and target trips to quantify the performance gap.
Fields:
 	City_name   month_name   actual_trips   target_trips   performance_status   % difference
*/
with cte1 as (select city_id,d.month_name,count(trip_id) as actual_trips from fact_trips t
join dim_date d
on t.date=d.date	
group by 1,2
order by 1),

cte2 as (select city_id,monthname(month)as m,sum(total_target_trips) as total_target_trips
from targets_db.monthly_target_trips
group by 1,2)

select city_name,month_name,actual_trips,total_target_trips,
case when actual_trips> total_target_trips then 'Above Target'
else 'Below Target' end as 'performance_status',
(actual_trips-total_target_trips)/total_target_trips*100 as 'difference%'
from cte1 
join cte2
on cte1.city_id=cte2.city_id
and cte1.month_name=cte2.m
join trips_db.dim_city c
on c.city_id=cte2.city_id
order by city_name, actual_trips;