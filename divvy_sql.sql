CREATE DATABASE divvy;
USE divvy;
CREATE TABLE 2023_divvy (
  ride_id VARCHAR(50) PRIMARY KEY, -- Unique identifier for the ride
  rideable_type VARCHAR(50),
  started_at VARCHAR(50), -- Timestamp when the ride started
  ended_at VARCHAR(50), -- Timestamp when the ride ended
  start_station_name VARCHAR(50),
  start_station_id VARCHAR(50),
  end_station_name VARCHAR(50),
  end_station_id VARCHAR(50),
  start_lat DECIMAL(10, 7), -- Latitude of the starting station
  start_lng DECIMAL(10, 7), -- Longitude of the starting station
  ending_lat DECIMAL(10, 7), -- Latitude of the ending station
  ending_lng DECIMAL(10, 7), -- Longitude of the ending station
  member_casual VARCHAR(50)
);

LOAD DATA LOCAL INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\202301-divvy-tripdata.csv'
INTO TABLE 2023_divvy
FIELDS TERMINATED BY ',' 
IGNORE 1 LINES

LOAD DATA LOCAL INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\202302-divvy-tripdata.csv'
INTO TABLE 2023_divvy FIELDS TERMINATED BY ',' IGNORE 1 LINES;

TRUNCATE TABLE 2023_divvy;

select COUNT(*)
from 2023_divvy

select *
from 2023_divvy_calc

alter table 2023_divvy_calc
drop column trip_duration, 
drop column day_of_week;


SELECT COUNT(*)
FROM 2023_divvy_calc
WHERE trip_duration < 0;

select count(*)
from 2023_divvy_calc
WHERE TIME_TO_SEC(trip_duration) > 86400;


