/* Business Request - 6: Repeat Passenger Rate Analysis
Generate a report that calculates two metrics:
1.	Monthly Repeat Passenger Rate: Calculate the repeat passenger rate for each city and month by comparing the number of repeat passengers to the total passengers.
2.	City-wide Repeat Passenger Rate: Calculate the overall repeat passenger rate for each city, considering all passengers across months.
These metrics will provide insights into monthly repeat trends as well as the overall repeat behaviour for each city.
Fields:
  city_name   month   total_passengers   repeat_passengers   monthly_repeat_passenger_rate (%): 
  Repeat passenger rate at the city and month level   city_repeat_passenger_rate (%): Overall repeat passenger rate for each city, aggregated across months
*/
with monthly_passenger as (
    select 
        c.city_name,
        monthname(str_to_date(p.month, '%Y-%m-%d')) as month_name, 
        p.total_passengers,
        p.repeat_passengers,
        case 
            when p.total_passengers > 0 
            then concat(round((p.repeat_passengers / p.total_passengers) * 100, 2), '%') 
            else '0%' 
        end as monthly_repeat_passenger_rate_per
    from trips_db.fact_passenger_summary p
    join trips_db.dim_city c on c.city_id = p.city_id
),
city_wise_passengers as (
    select 
        city_name,
        sum(total_passengers) as total_passengers,
        sum(repeat_passengers) as repeat_passengers,
        case 
            when sum(total_passengers) > 0 
            then concat(round((sum(repeat_passengers) / sum(total_passengers)) * 100, 2), '%') 
            else '0%' 
        end as city_repeat_passenger_rate_per
    from monthly_passenger
    group by city_name
)
select 
    mp.city_name,
    mp.month_name,
    mp.total_passengers,
    mp.repeat_passengers,
    mp.monthly_repeat_passenger_rate_per,
    cwp.city_repeat_passenger_rate_per
from monthly_passenger mp
join city_wise_passengers cwp
    on mp.city_name = cwp.city_name
order by mp.city_name, mp.month_name;