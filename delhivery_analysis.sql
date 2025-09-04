USE delhivery_analysis;
CREATE TABLE delhivery_data (
    data VARCHAR(255),
    trip_creation_time TEXT,
    route_schedule_uuid TEXT,
    route_type TEXT,
    trip_uuid TEXT,
    source_center TEXT,
    source_name VARCHAR(255),
    destination_center VARCHAR(255),
    destination_name TEXT,
    od_start_time TEXT,
    od_end_time TEXT,
    start_scan_to_end_scan DOUBLE,
    is_cutoff TEXT,
    cutoff_factor INTEGER,
    cutoff_timestamp TEXT,
    actual_distance_to_destination DOUBLE,
    actual_time DOUBLE,
    osrm_time DOUBLE,
    osrm_distance DOUBLE,
    factor DOUBLE,
    segment_actual_time DOUBLE,
    segment_osrm_time DOUBLE,
    segment_osrm_distance DOUBLE,
    segment_factor DOUBLE
);

SET GLOBAL LOCAL_INFILE = 1;
LOAD DATA LOCAL INFILE 'C:/Users/abhip/Downloads/Data Analytics Projects/Major Projects/Supply Chain Optimization/delhivery_data.csv'
INTO TABLE delhivery_data
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT COUNT(*) FROM delhivery_data;
-- Analysis For Delay Prediction Model --

-- No. of deliveries by Route Type -- 
SELECT route_type, COUNT(trip_uuid) AS total_deliveries
FROM delhivery_data
GROUP BY route_type;

--  Average delay per route type -- 
SELECT route_type, ROUND(AVG(segment_actual_time - segment_osrm_time),2) AS avg_delay_minutes
FROM delhivery_data
GROUP BY route_type
ORDER BY avg_delay_minutes DESC;

-- Top 10 routes have the highest average delay --
SELECT source_name, destination_name, ROUND(AVG(segment_actual_time - segment_osrm_time),2) AS avg_delay_minutes
FROM delhivery_data
GROUP BY source_name, destination_name
ORDER BY avg_delay_minutes DESC
LIMIT 10;

-- How does delay vary by the hour of the day?--
SELECT EXTRACT(HOUR FROM od_start_time) AS start_hour, ROUND(AVG(segment_actual_time - segment_osrm_time),2) AS average_delay
FROM delhivery_data
GROUP BY start_hour
ORDER BY start_hour DESC;

-- How does the OSRM distance of a segment correlate with delay?--
SELECT ROUND(segment_osrm_distance / 10) * 10  as distance_bucket, ROUND(AVG(segment_actual_time - segment_osrm_time),2) AS average_delay
FROM delhivery_data
GROUP BY distance_bucket
ORDER BY average_delay DESC;

-- What are the top 5 source centers contributing to the highest total delays? -- 
SELECT source_name, ROUND(AVG(segment_actual_time - segment_osrm_time),2) AS average_delay
FROM delhivery_data
GROUP BY source_name
ORDER BY average_delay DESC
LIMIT 5;

-- Analysis For Time Travel Prediction Model --

-- Averge actual travle time per Route Type -- 
SELECT route_type, ROUND(AVG(actual_time),2) as Avg_actual_time
FROM delhivery_data
GROUP BY route_type;

-- How accurate is the OSRM time estimate overall? --
SELECT ROUND(AVG(actual_time),2) AS average_actual, ROUND(AVG(osrm_time),2) AS average_osrm, ROUND(AVG(actual_time - osrm_time),2) AS average_estimation_error
FROM delhivery_data;

-- What is the average speed (distance/time) for each route type? --
SELECT route_type, ROUND(AVG(osrm_distance / (actual_time/60)),2) as average_speed
FROM delhivery_data
GROUP BY route_type;

-- How accurate is the OSRM time estimate overall? --
SELECT source_name, destination_name, ROUND(STDDEV(actual_time),2) AS time_variability
FROM delHivery_data
GROUP BY source_name, destination_name
ORDER BY time_variability DESC
LIMIT 10;
