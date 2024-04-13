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

This document can be further developed to include the following sections:

Introduction: Briefly introduce Cyclistic, the case study scenario, and your role as a data analyst.
Data Exploration: Describe the provided data set, including its format, variables, and initial observations.
Data Cleaning & Preparation: Outline the steps taken to clean and prepare the data for analysis (handling missing values, formatting data types, etc.)
Data Analysis: Present your analysis of the data, focusing on identifying key trends and differences between casual riders and annual members.
Consider factors like trip frequency, trip duration, day of the week, time of day, etc.
Utilize data visualizations to effectively showcase your findings.
Recommendations: Based on your analysis, propose specific marketing strategies to attract and convert casual riders into annual members.
Conclusion: Summarize your key findings and reiterate the potential impact of your recommendations.
