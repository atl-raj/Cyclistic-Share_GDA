CREATE TABLE 2023_divvy_calc AS
SELECT ride_id, rideable_type,
       STR_TO_DATE(REPLACE(started_at, '"', ''), '%Y-%m-%d %H:%i:%S') AS started_at,
       STR_TO_DATE(REPLACE(ended_at, '"', ''), '%Y-%m-%d %H:%i:%S') AS ended_at,
       start_station_name, start_station_id, end_station_name, end_station_id, member_casual,
       TIMEDIFF(ended_at, started_at) AS trip_duration,
       DAYNAME(started_at) AS day_of_week
FROM 2023_divvy
WHERE ride_id IS NOT NULL AND ride_id <> ''
  AND rideable_type IS NOT NULL AND rideable_type <> ''
  AND started_at IS NOT NULL
  AND ended_at IS NOT NULL
  AND start_station_name IS NOT NULL AND start_station_name <> ''
  AND start_station_id IS NOT NULL AND start_station_id <> ''
  AND end_station_name IS NOT NULL AND end_station_name <> ''
  AND end_station_id IS NOT NULL AND end_station_id <> ''
  AND start_lat IS NOT NULL
  AND start_lng IS NOT NULL
  AND ending_lat IS NOT NULL
  AND ending_lng IS NOT NULL
  AND member_casual IS NOT NULL AND member_casual <> '';

UPDATE 2023_divvy_calc
SET 
	ride_id = REPLACE(ride_id, '"', ''),
    rideable_type = REPLACE(rideable_type, '"', ''),
	started_at = REPLACE(started_at, '"', ''),
    ended_at = REPLACE(ended_at, '"', ''),
    start_station_name = REPLACE(start_station_name, '"', ''),
    start_station_id = REPLACE(start_station_id, '"', ''),
    end_station_name = REPLACE(end_station_name, '"', ''),
    end_station_id = REPLACE(end_station_id, '"', ''),
    member_casual = REPLACE(member_casual, '"', '');
