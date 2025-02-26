/*Business Request - 5: Identify Month with Highest Revenue for Each City
Generate a report that identifies the month with the highest revenue for each city. 
For each city, display the month_name, the revenue amount for that month, and the percentage contribution of that month's revenue to the city's total revenue.
Fields
 	city_name   highest_revenue month   revenue   percentage_contribution (%)
*/
WITH MonthWiseRevenue AS (
    SELECT
        dc.city_name AS city,
        DATE_FORMAT(dd.start_of_month, '%M %Y') AS month,
        SUM(ft.fare_amount) AS revenue
    FROM 
        fact_trips AS ft
    JOIN 
        dim_city AS dc
        ON ft.city_id = dc.city_id
    JOIN
        dim_date AS dd
        ON ft.date = dd.date
    GROUP BY
        dc.city_name, dd.start_of_month
),
RevenueContribution AS (
    SELECT
        *,
        ROUND((revenue / SUM(revenue) OVER (PARTITION BY city)) * 100, 2) AS revenue_contribution
    FROM
        MonthWiseRevenue
),
RankCity AS (
    SELECT
        *,
        DENSE_RANK() OVER (PARTITION BY city ORDER BY revenue DESC) AS rank_revenue,
        ROW_NUMBER() OVER (PARTITION BY city ORDER BY revenue DESC) AS row_num
        -- ROW_NUMBER is used to remove duplicate rows for cities and months
        -- where multiple months have identical revenue contributions
    FROM
        RevenueContribution
)
SELECT
    city AS "City",
    month AS "Month",
    revenue AS "Revenue (₹)",
    revenue_contribution AS "Revenue Contribution (%)"
FROM
    RankCity
WHERE
    rank_revenue = 1 AND row_num = 1
ORDER BY
    revenue DESC;