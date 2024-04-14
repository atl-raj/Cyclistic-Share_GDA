# Cyclistic-Share_GDA

Google Data Analytics Capstone Project: Cyclistic Bike Share Case Study 1
This document serves as a guide for the Google Data Analytics Capstone Project - Case Study 1: Cyclistic Bike Share.

### Scenario:
Cyclistic is a successful bike-sharing company operating in Chicago. They offer a fleet of bicycles accessible through a network of docking stations across the city. Currently, Cyclistic utilizes a general marketing approach targeting broad consumer segments. Their pricing plans include single-ride passes, full-day passes, and annual memberships. Customers purchasing single-ride or full-day passes are classified as casual riders, while those with annual memberships are Cyclistic members.

Financial analysis indicates that annual members are significantly more profitable for Cyclistic compared to casual riders. To optimize their marketing strategy, Cyclistic aims to understand how these two user groups differ in their bike-sharing habits.

### My Role:
As a junior data analyst on the marketing team, I am tasked with analyzing user data to uncover insights into the usage patterns of casual riders vs. annual members. These insights will be used to develop targeted marketing strategies aimed at converting casual riders into annual members.

### Project Objectives:
* Analyze provided bike-sharing data to explore user trends.
* Identify key differences in bike usage patterns between casual riders and annual members.
* Utilize data visualizations to effectively communicate findings.
* Develop actionable recommendations for marketing campaigns to attract casual riders and convert them into annual members.

### Deliverables:
* A comprehensive report outlining your analysis and findings.
* Data visualizations created using a tool like Tableau.
* Recommendations for targeted marketing strategies.

### Tools & Resources:
* Tableau (data visualization)
* SQL (data manipulation)
* Provided bike-sharing data set

### Document Structure:
* ride_id - primary
* rideable_type - classic/electric/docked bike
* start_station_id - unique ID for start locations
* start_station_name 
* started_at - date & time at which the ride started
* start_lat
* start_lng
* end_station_id - unique ID for start locations
* end_station_name
* ended_at - date & time at which the ride started
* ending_lat
* ending_lng
* member_casual

### Calculated columns: 
* trip_duration - calculated using the difference from started and ending time

### Data Cleaning
This project investigated user behavior within the Cyclistic bike-share system.  We employed SQL for data manipulation and retrieval. Individual data files were combined to create a comprehensive dataset encompassing all rides. Data quality checks were implemented to ensure data integrity. Records lacking start or end station identifiers were excluded from the analysis. Additionally, trips with durations less than one minute or exceeding one day were removed as outliers potentially indicating data recording errors.

### Visualization 
Following data cleaning, Tableau, a data visualization platform, was utilized to create interactive visualizations that facilitated the exploration of user patterns. These visualizations provided insights into ridership trends, user demographics (if available in the dataset), and potential areas for system optimization.

[Tableau Viz](https://public.tableau.com/app/profile/atul.raj4327/viz/CyclisticBikeShare_17124258012150/Dashboard2)

### Analysis
Analyzing ridership data for Cyclistic's bike-sharing program revealed interesting patterns. 
* Unsurprisingly, sunny summers saw the most cyclists, with usage dropping during colder months.
* Interestingly, a clear distinction emerged between subscription members and casual riders. Subscription members, likely regular commuters, dominated weekday ridership, with trip peaks coinciding with morning and evening commutes. Casual riders, on the other hand, seemed to favor weekends, suggesting a more recreational use of the service.
*One surprising finding was the overwhelming preference for classic bicycles over electric options. While this highlights the popularity of cycling for exercise and leisure, it also presents an opportunity. By offering targeted campaigns showcasing the benefits of electric bikes, such as reducing commute times or tackling steeper inclines, Cyclistic could potentially convert casual riders into more frequent cyclists and expand their customer base.

### Solution
Based on the analysis of Cyclistic's bike-share data, here are several solutions to consider:

* **Targeted Marketing**:
  *Implement weekend promotions to attract casual riders who peak during this time.
  *Develop campaigns specifically showcasing the benefits of electric bikes to convert casual riders into more frequent cyclists (e.g., reduce commute times, tackle hills).

* **Incentivize Weekday Usage**:
  *Analyze commute patterns and consider offering incentives (discounts, rewards) during peak commute hours to encourage subscription member ridership throughout the week.

* **Improve Data Collection**:
  *Investigate reasons behind the lack of electric bike usage. User surveys or focus groups could provide valuable insights.
  *This data-driven approach can help Cyclistic optimize their bike-share system, increase ridership, and potentially boost revenue.
