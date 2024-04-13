CREATE TABLE 2023_divvy_summary AS
SELECT
    CONCAT(REPLACE(start_station_name, '"', ''), ' - ', REPLACE(end_station_name, '"', '')) AS route,
    member_casual,
    rideable_type,
    CONCAT(
        FLOOR(SUM(total_sec) / (24 * 3600)), ':',
        LPAD(FLOOR(SUM(total_sec) % (24 * 3600) / 3600), 2, '0'), ':',
        LPAD(FLOOR(SUM(total_sec) % 3600 / 60), 2, '0'), ':',
        LPAD(SUM(total_sec) % 60, 2, '0')
    ) AS total_trip_duration,
    COUNT(*) AS trip_count  -- Added count for number of trips
FROM (
    SELECT
        ride_id,
        rideable_type,
        STR_TO_DATE(REPLACE(started_at, '"', ''), '%Y-%m-%d %H:%i:%s') AS started_at,
        STR_TO_DATE(REPLACE(ended_at, '"', ''), '%Y-%m-%d %H:%i:%s') AS ended_at,
        start_station_name,
        end_station_name,
        member_casual,
        TIMEDIFF(ended_at, started_at) AS trip_duration,
        TIME_TO_SEC(TIMEDIFF(ended_at, started_at)) AS total_sec
    FROM
        2023_divvy_calc
) AS subquery
GROUP BY
    route,
    rideable_type,
    subquery.member_casual
ORDER BY
    SUM(total_sec) DESC;
