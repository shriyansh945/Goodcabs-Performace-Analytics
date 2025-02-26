/*Business Request - 3: City-Level Repeat Passenger Trip Frequency Report
Generate a report that shows the percentage distribution of repeat passengers by the number of trips they have taken in each city.
Calculate the percentage of repeat passengers who took 2 trips, 3 trips, and so on, up to 10 trips.
Each column should represent a trip count category, displaying the percentage of repeat passengers 
who fall into that category out of the total repeat passengers for that city.
This report will help identify cities with high repeat trip frequency, which can indicate strong customer loyalty or frequent usage patterns.
• Fields: city_name, 2-Trips, 3-Trips, 4-Trips, 5-Trips, 6-Trips, 7-Trips, 8-Trips, 9-Trips, 10-Trips
*/

select 
    c.city_name,
    concat(round(sum(case when d.trip_count = 2 then d.repeat_passenger_count else 0 end) * 100.0 / sum(d.repeat_passenger_count), 2), '%') as "2-trips",
    concat(round(sum(case when d.trip_count = 3 then d.repeat_passenger_count else 0 end) * 100.0 / sum(d.repeat_passenger_count), 2), '%') as "3-trips",
    concat(round(sum(case when d.trip_count = 4 then d.repeat_passenger_count else 0 end) * 100.0 / sum(d.repeat_passenger_count), 2), '%') as "4-trips",
    concat(round(sum(case when d.trip_count = 5 then d.repeat_passenger_count else 0 end) * 100.0 / sum(d.repeat_passenger_count), 2), '%') as "5-trips",
    concat(round(sum(case when d.trip_count = 6 then d.repeat_passenger_count else 0 end) * 100.0 / sum(d.repeat_passenger_count), 2), '%') as "6-trips",
    concat(round(sum(case when d.trip_count = 7 then d.repeat_passenger_count else 0 end) * 100.0 / sum(d.repeat_passenger_count), 2), '%') as "7-trips",
    concat(round(sum(case when d.trip_count = 8 then d.repeat_passenger_count else 0 end) * 100.0 / sum(d.repeat_passenger_count), 2), '%') as "8-trips",
    concat(round(sum(case when d.trip_count = 9 then d.repeat_passenger_count else 0 end) * 100.0 / sum(d.repeat_passenger_count), 2), '%') as "9-trips",
    concat(round(sum(case when d.trip_count = 10 then d.repeat_passenger_count else 0 end) * 100.0 / sum(d.repeat_passenger_count), 2), '%') as "10-trips"
from trips_db.dim_repeat_trip_distribution d
join trips_db.dim_city c
    on c.city_id = d.city_id
group by c.city_name;
