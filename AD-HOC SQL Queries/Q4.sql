/*Business Request - 4: Identify Cities with Highest and Lowest Total New Passengers
Generate a report that calculates the total new passengers for each city and ranks them based on this value.
Identify the top 3 cities with the highest number of new passengers as well as the bottom 3 cities with the 
lowest number of new passengers, categorising them as "Top 3" or "Bottom 3" accordingly.
FieldS
 	city_name
 	total new_passengers
 	city_category ("Top 3" or "Bottom 3")
*/
with cte as(
SELECT city_name,sum(new_passengers) as 'total_new_passengers',
dense_rank()over(order by sum(new_passengers) desc) as 'top_rank',
dense_rank()over(order by sum(new_passengers) asc) as 'bottom_rank'
FROM trips_db.fact_passenger_summary p
join dim_city c
on p.city_id=c.city_id
group by 1)

select city_name,total_new_passengers,
case when top_rank<=3 then "Top 3"
when bottom_rank<=3 then "Bottom 3" end as "city_category"
from cte
where top_rank<=3 or bottom_rank<=3
order by 2 desc;
