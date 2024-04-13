SELECT *
FROM 2023_divvy LIMIT 11;

SELECT COUNT(*)
FROM 2023_divvy
WHERE ride_id IS NOT NULL AND ride_id <> ''
  OR rideable_type IS NOT NULL AND rideable_type <> ''
  OR started_at IS NOT NULL
  OR ended_at IS NOT NULL
  OR start_station_name IS NOT NULL AND start_station_name <> ''
  OR start_station_id IS NOT NULL AND start_station_id <> ''
  OR end_station_name IS NOT NULL AND end_station_name <> ''
  OR end_station_id IS NOT NULL AND end_station_id <> ''
  OR start_lat IS NOT NULL
  OR start_lng IS NOT NULL
  OR ending_lat IS NOT NULL
  OR ending_lng IS NOT NULL
  AND member_casual IS NOT NULL AND member_casual <> '';
