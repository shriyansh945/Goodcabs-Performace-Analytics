# Goodcabs-Performace-Analytics


<h2 align="center">
  <br>
  Codebasics Resume Project Challenge #13  
</h2>  


<h4 align="center">  
  Operational Insights for GoodCabs Growth 2024  
<p align="center">  
</p>
</h4> 
 <br>
<h2 align="center">  
  Problem Statement  
</h2>  

This project aims to generate actionable insights that align with GoodCabs' strategic objectives for 2024. Through data analytics, the focus is on:  

1. **Optimizing Operations**: Identifying opportunities to increase trip volumes and enhance efficiency across tier-2 cities.  
2. **Enhancing Customer Experience**: Uncovering trends to ensure a smooth and satisfying journey for passengers.  
3. **Boosting Customer Retention**: Implementing data-driven strategies to improve repeat engagement and foster long-term loyalty.  
4. **Enabling Informed Decisions**: Providing the Chief of Operations with critical insights to support growth strategies and business expansion.  

By leveraging these insights, GoodCabs can scale its operations while upholding its mission to empower local drivers and deliver high-quality service.  
</div>

<h2 align="center">
  Model View
</h2>

![Image](https://github.com/user-attachments/assets/cf4c2274-2418-4301-bee6-208802b162e6)

<h2 align="center">
  Primary Analysis
</h2>
### 1. Top and Bottom Performing Cities  

<img src="https://github.com/user-attachments/assets/9434a601-794e-47ce-9daa-d9082f7de988" width="80%">

- Jaipur, Lucknow, and Surat emerge as the top-performing cities in terms of trip volume, whereas Visakhapatnam, Coimbatore, and Mysore register the lowest trip counts.  

### 2. Average Fare per Trip by City  

<img src="https://github.com/user-attachments/assets/e5e9b1cc-47d7-4c87-866d-2ae80fb6ceda" width="50%"> 

- Jaipur records the highest average fare at ₹484 for a 30 km trip, while Surat has the lowest at ₹117 for an 11 km ride. Similarly, Vadodara's fare closely aligns with Surat at ₹119 for a 12 km journey.  
- **On a per-kilometer basis, Jaipur's fare is ₹16, whereas Surat offers a more budget-friendly rate of ₹11.**  

### 3. Average Ratings by City and Passenger Type  

<img src="https://github.com/user-attachments/assets/bec47bb8-0a49-452f-8817-7140d0cf0037" width="85%">  

- Kochi, Jaipur, and Mysore achieve the highest ratings, averaging 8.98 from both new and repeat passengers. On the contrary, Surat, Vadodara, and Lucknow receive the lowest scores, dropping to 5.99 for both drivers and passengers.

- ### 4. Peak and Low Demand Months by City

<img src="https://github.com/user-attachments/assets/ee279728-81e3-45aa-8a08-95d6b2eadb15" width="55%">

- Jaipur, Lucknow, and Chandigarh recorded the highest trip volumes in February, with May and April also emerging as peak months for other cities. Conversely, June and January saw the lowest trip counts, especially in Jaipur, Kochi, Indore, Vadodara, and Coimbatore.
- **In summary, February, May, and April are the busiest months, while June and January experience the lowest demand across the cities.**

### 5. Weekend vs. Weekday Trip Demand by City

<img src="https://github.com/user-attachments/assets/cb7f09a3-39c7-4f35-bd94-e6bfc8dc1fd8" width="70%">

- Weekdays were more active in Lucknow, Surat, and Jaipur, while Mysore, Coimbatore, and Visakhapatnam recorded fewer trips.
- On weekends, demand peaked in Jaipur, Kochi, and Surat, whereas Mysore, Coimbatore, and Visakhapatnam trailed behind. This highlights a distinct preference for weekdays in some cities and weekends in others.

### 6. Repeat Passenger Frequency & City Contribution Analysis

<img src="https://github.com/user-attachments/assets/18547164-5a72-4507-95cd-b7a066c6a588" width ="65%">

- In Visakhapatnam, Jaipur, and Mysore, repeat passengers primarily take 2 trips, accounting for around 50%, with a significant drop in frequency beyond that.
- On the other hand, Lucknow, Coimbatore, Vadodara, and Surat exhibit a growing trend, with repeat trip frequency steadily rising and peaking at 6 trips, highlighting contrasting patterns in travel behavior.

### 7. Monthly Target Achievement Analysis for Key Metrics

<img src="https://github.com/user-attachments/assets/2fbab085-bca4-4e40-b448-22be30710e95" width="70%" height="115%">

- Business cities typically met their target for new passengers but faced challenges in achieving trip and rating goals.
- In contrast, tourism cities like Jaipur, Kochi, and Mysore excelled in meeting trip and rating targets but fell short in attracting new passengers. Chandigarh and Visakhapatnam, however, missed all targets across trips, new passengers, and ratings, revealing a significant performance gap.

- ### 8. Cities with Highest and Lowest Repeat Passenger Rate (RPR%) by Month  

<img src="https://github.com/user-attachments/assets/b508f43e-2ea9-470b-bd68-03f3104dd98a" width="60%">  

- The Repeat Passenger Rate (RPR%) showed a steady upward trend from January, reaching its peak in May before experiencing a slight decline in June. Notably, Visakhapatnam deviated from this pattern, exhibiting a sharp rise in April followed by a drop.  
- Surat and Lucknow recorded the highest RPR at 42.63% and 37.12%, respectively, whereas Jaipur and Mysore had the lowest at 17.43% and 11.23%.  

<h2 align="center">
  Ad-Hoc Business Requests
</h2>

### 1. City-Level Fare and Trip Summary  

Read the [Query-1 here](https://github.com/1.sql).  

<img src="https://github.com/user-attachments/assets/0c864ad4-3e63-407b-b9a6-86b64195a532" width="70%">  

- Jaipur records the highest average fare per trip at ₹483.92, while Indore has the lowest at ₹179.84. Mysore charges the most per km at ₹15.14, whereas Surat offers the most economical fare at ₹10.66 per km. The top three cities—Jaipur, Lucknow, and Kochi—contribute 45.1% of total trips, whereas Mysore has the lowest share at 3.81%.  

### 2. Monthly City-Level Trips vs. Target Performance  

Read the [Query-2 here](https://github.com/l).  

<img src="https://github.com/user-attachments/assets/843e60bc-5adf-4034-84bf-646d038b6df8" width="70%">  

- Mysore outperformed targets by +33% in February, followed by Jaipur in February and Kochi in March. On the lower end, Vadodara fell short by -28% in June, while Lucknow and Indore both lagged by -16% in January and June, respectively.  

### 3. Repeat Passenger Trip Frequency by City  

Read the [Query-3 here](https://github.com/g.sql).  

<img src="https://github.com/user-attachments/assets/6ccff61b-9dff-408b-a2d1-bcd6161abb5a" width="70%">  

- Visakhapatnam, Jaipur, and Mysore exhibit strong passenger retention, with nearly 50% of users taking at least 2 repeat trips before the frequency drops sharply. In contrast, Lucknow, Coimbatore, Vadodara, and Surat display a steady increase in repeat trip frequency up to 6 trips, indicating varied customer engagement patterns. This analysis helps identify cities with high passenger loyalty and sustained usage trends.

- ### 4. Cities with the Highest and Lowest New Passengers  

Read the [Query-4 here](https://github.comB4.sql).  

<img src="https://github.com/user-attachments/assets/e4ebf188-4d07-4a0b-a4dc-5ebb67fdba73" width="48%">  

- Jaipur leads with **45,800 new passengers**, followed by Kochi and Chandigarh in the top three. Conversely, Surat (11,600), Vadodara, and Coimbatore record the lowest numbers, indicating potential growth opportunities in these cities.  

### 5. Peak Revenue Month for Each City  

Read the [Query-5 here](https://github.csql).  

<img src="https://github.com/user-attachments/assets/5d7bac13-cc07-47cb-92a2-80a363efdd5e" width="68%">  

- The analysis highlights the highest revenue month for each city. **Jaipur peaks at ₹7.75 million in February (21%)**, alongside Kochi, Chandigarh, and Lucknow. Visakhapatnam, Surat, Vadodara, and Coimbatore see revenue highs in April, while Indore, Mysore, and Kochi reach their maximum earnings in May.  

### Repeat Passenger Rate Analysis

Read the [Query-6.1 here](https://github.B6.1.sql).

<img src="https://github.com/user-attachments/assets/7bacea47-9b32-4196-9e9a-e44d58ec7e19" width="70%">

- Surat and Lucknow lead with the highest repeat passenger rates, showing strong customer loyalty. Indore, Kochi, and Visakhapatnam demonstrate consistent increases in repeat passenger rates, indicating growing retention. Mysore and Jaipur have lower repeat passenger rates, suggesting lower customer retention. Repeat rates generally rise from April to May, with May showing the highest rates across several cities, pointing to potential seasonal trends.

- ## Further Analysis & Recommendations  

###  Key Factors Affecting Repeat Passenger Rates  

- **Service Quality:** Cities like **Surat (42%)** and **Lucknow (37%)** show strong passenger retention due to reliable services, whereas **Jaipur (17%)** and **Mysore (11%)** struggle with lower retention, indicating service-related challenges.  
- **Pricing Impact:** Lower fares in **Surat (₹11/km)** and **Vadodara (₹12/km)** align with higher repeat rates, while **Jaipur’s premium rate of ₹16/km** may discourage frequent usage.  
- **Demographics Influence:** Business hubs like **Surat and Indore** exhibit steady repeat usage, while tourism-driven cities like **Jaipur and Mysore** experience fluctuations based on peak travel seasons.  
- **Economic Factors:** Cities with higher income levels, such as **Jaipur**, see seasonal surges in repeat passengers, whereas dependence on public transport reduces repeat engagement in **Mysore and Coimbatore**.  
- **Seasonal Trends:** The highest repeat rates are recorded in **February, May, and April**, with declines observed in **June and January**, especially in **Jaipur and Kochi**.   

  
## Contact

Author: www.linkedin.com/in/shriyansh945

