/* Business Request - 1: City-Level Fare and Trip Summary Report
Generate a report that displays the total trips, average fare per km, average fare per trip, and the percentage contribution of each city's trips to the overall trips.
This report will help in assessing trip volume, pricing efficiency, and each city's contribution to the overall trip count.
Fields:
 	city_name  	total_trips   avg_fare_per_km   avg_fare_per_trip
 	%_contribution_to_total_trips
*/
with cte1 as (select city_id,count(trip_id) as 'total_trips' from fact_trips
group by 1),

cte2 as (select city_id,round(sum(fare_amount)/sum(distance_travelled_km),2) as 'avg_fare_per_km' from fact_trips 
group by 1),

cte3 as (select city_id,round(sum(fare_amount)/count(trip_id),2) as 'avg_fare_per_trip'from fact_trips
group by 1),

cte4 as (select city_id,round(count(trip_id)/
(select count(trip_id) from fact_trips)*100,2) as 'percentage_contribution' from fact_trips t
group by 1)

select c.city_name,cte1.total_trips,cte2.avg_fare_per_km,cte3.avg_fare_per_trip,cte4.percentage_contribution from cte1
join cte2 on
cte1.city_id=cte2.city_id
join cte3 on
cte2.city_id=cte3.city_id
join cte4 on
cte3.city_id=cte4.city_id
join dim_city c
on c.city_id=cte4.city_id
order by percentage_contribution desc;



