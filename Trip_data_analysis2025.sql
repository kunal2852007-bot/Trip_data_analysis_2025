use trip_data_2025;

-- create table named 202502_trip_data
create table 202501_tripdata(
ride_id text,
rideable_type text,
started_at datetime,
ended_at datetime,
start_station_name text,
start_station_id text,
end_station_name text,
end_station_id text,
start_lat DECIMAL(9,6),
start_lng DECIMAL(9,6),
end_lat DECIMAL(9,6),
end_lng DECIMAL(9,6),
member_casual text
);
LOAD DATA LOCAL INFILE 'F:/projects/202502-divvy-tripdata.csv'
INTO TABLE 202501_tripdata
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;


-- create table named 202502_trip_data
create table 202502_tripdata(
ride_id text,
rideable_type text,
started_at datetime,
ended_at datetime,
start_station_name text,
start_station_id text,
end_station_name text,
end_station_id text,
start_lat DECIMAL(9,6),
start_lng DECIMAL(9,6),
end_lat DECIMAL(9,6),
end_lng DECIMAL(9,6),
member_casual text
);
LOAD DATA LOCAL INFILE 'F:/projects/202502-divvy-tripdata.csv'
INTO TABLE 202502_tripdata
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;


-- create table named 202503_trip_data
create table 202503_tripdata(
ride_id text,
rideable_type text,
started_at datetime,
ended_at datetime,
start_station_name text,
start_station_id text,
end_station_name text,
end_station_id text,
start_lat DECIMAL(9,6),
start_lng DECIMAL(9,6),
end_lat DECIMAL(9,6),
end_lng DECIMAL(9,6),
member_casual text
);
LOAD DATA LOCAL INFILE 'F:/projects/202503-divvy-tripdata.csv'
INTO TABLE 202503_tripdata
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;



-- create table named 202504_trip_data
create table 202504_tripdata(
ride_id text,
rideable_type text,
started_at datetime,
ended_at datetime,
start_station_name text,
start_station_id text,
end_station_name text,
end_station_id text,
start_lat DECIMAL(9,6),
start_lng DECIMAL(9,6),
end_lat DECIMAL(9,6),
end_lng DECIMAL(9,6),
member_casual text
);
LOAD DATA LOCAL INFILE 'F:/projects/202504-divvy-tripdata.csv'
INTO TABLE 202504_tripdata
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;


-- create table named 202505_trip_data
create table 202505_tripdata(
ride_id text,
rideable_type text,
started_at datetime,
ended_at datetime,
start_station_name text,
start_station_id text,
end_station_name text,
end_station_id text,
start_lat DECIMAL(9,6),
start_lng DECIMAL(9,6),
end_lat DECIMAL(9,6),
end_lng DECIMAL(9,6),
member_casual text
);
LOAD DATA LOCAL INFILE 'F:/projects/202505-divvy-tripdata.csv'
INTO TABLE 202505_tripdata
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;



-- create table named 202506_trip_data
create table 202506_tripdata(
ride_id text,
rideable_type text,
started_at datetime,
ended_at datetime,
start_station_name text,
start_station_id text,
end_station_name text,
end_station_id text,
start_lat DECIMAL(9,6),
start_lng DECIMAL(9,6),
end_lat DECIMAL(9,6),
end_lng DECIMAL(9,6),
member_casual text
);
LOAD DATA LOCAL INFILE 'F:/projects/202506-divvy-tripdata.csv'
INTO TABLE 202506_tripdata
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;


-- create table named 202507_trip_data
create table 202507_tripdata(
ride_id text,
rideable_type text,
started_at datetime,
ended_at datetime,
start_station_name text,
start_station_id text,
end_station_name text,
end_station_id text,
start_lat DECIMAL(9,6),
start_lng DECIMAL(9,6),
end_lat DECIMAL(9,6),
end_lng DECIMAL(9,6),
member_casual text
);
LOAD DATA LOCAL INFILE 'F:/projects/202507-divvy-tripdata.csv'
INTO TABLE 202507_tripdata
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;


-- create table named 202508_trip_data
create table 202508_tripdata(
ride_id text,
rideable_type text,
started_at datetime,
ended_at datetime,
start_station_name text,
start_station_id text,
end_station_name text,
end_station_id text,
start_lat DECIMAL(9,6),
start_lng DECIMAL(9,6),
end_lat DECIMAL(9,6),
end_lng DECIMAL(9,6),
member_casual text
);
LOAD DATA LOCAL INFILE 'F:/projects/202508-divvy-tripdata.csv'
INTO TABLE 202508_tripdata
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;



-- create table named 202509_trip_data
create table 202509_tripdata(
ride_id text,
rideable_type text,
started_at datetime,
ended_at datetime,
start_station_name text,
start_station_id text,
end_station_name text,
end_station_id text,
start_lat DECIMAL(9,6),
start_lng DECIMAL(9,6),
end_lat DECIMAL(9,6),
end_lng DECIMAL(9,6),
member_casual text
);
LOAD DATA LOCAL INFILE 'F:/projects/202509-divvy-tripdata.csv'
INTO TABLE 202509_tripdata
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;


-- create table named 202510_trip_data
create table 202510_tripdata(
ride_id text,
rideable_type text,
started_at datetime,
ended_at datetime,
start_station_name text,
start_station_id text,
end_station_name text,
end_station_id text,
start_lat DECIMAL(9,6),
start_lng DECIMAL(9,6),
end_lat DECIMAL(9,6),
end_lng DECIMAL(9,6),
member_casual text
);
LOAD DATA LOCAL INFILE 'F:/projects/202510-divvy-tripdata.csv'
INTO TABLE 202510_tripdata
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;


-- create table named 202511_trip_data
create table 202511_tripdata(
ride_id text,
rideable_type text,
started_at datetime,
ended_at datetime,
start_station_name text,
start_station_id text,
end_station_name text,
end_station_id text,
start_lat DECIMAL(9,6),
start_lng DECIMAL(9,6),
end_lat DECIMAL(9,6),
end_lng DECIMAL(9,6),
member_casual text
);
LOAD DATA LOCAL INFILE 'F:/projects/202511-divvy-tripdata.csv'
INTO TABLE 202511_tripdata
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;


-- create table named 202512_trip_data
create table 202512_tripdata(
ride_id text,
rideable_type text,
started_at datetime,
ended_at datetime,
start_station_name text,
start_station_id text,
end_station_name text,
end_station_id text,
start_lat DECIMAL(9,6),
start_lng DECIMAL(9,6),
end_lat DECIMAL(9,6),
end_lng DECIMAL(9,6),
member_casual text
);
LOAD DATA LOCAL INFILE 'F:/projects/202511-divvy-tripdata.csv'
INTO TABLE 202512_tripdata
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;


-- it commbin all the tables in single table
create table all_trip_data_2025 as
(select * from 202501_tripdata union all
select * from 202502_tripdata union all
select * from 202503_tripdata);

insert into all_trip_data_2025
(select * from 202504_tripdata union all
select * from 202505_tripdata union all
select * from 202506_tripdata );

insert into all_trip_data_2025
(select * from 202507_tripdata union all
select * from 202508_tripdata );

insert into all_trip_data_2025
(select * from 202509_tripdata union all
select * from 202510_tripdata );

insert into all_trip_data_2025
(select * from 202511_tripdata union all
select * from 202512_tripdata);

select * from  all_trip_data_2025;

-- total number of members and casual riders
select
	sum(member_casual="member") as 'member',
    sum(member_casual="casual") as 'casual'
from
	all_trip_data_2025;
    

-- average ride duaration
SELECT
    CONCAT(
        FLOOR(AVG(ride_seconds) / 60),
        ' minutes ',
        ROUND(MOD(AVG(ride_seconds), 60)),
        ' seconds'
    ) AS avg_ride_duration
FROM (
    SELECT
        TIMESTAMPDIFF(SECOND, started_at, ended_at) AS ride_seconds
    FROM all_trip_data_2025
    WHERE ended_at > started_at
) AS rides;

-- most rides of the day 
SELECT
    DAYNAME(started_at) AS day_of_week,
    COUNT(*) AS total_rides
FROM all_trip_data_2025
GROUP BY DAYNAME(started_at)
ORDER BY total_rides DESC;


-- most rides of the month 
SELECT
    monthNAME(started_at) AS month_of_year,
    COUNT(*) AS total_rides
FROM all_trip_data_2025
GROUP BY monthNAME(started_at)
ORDER BY total_rides DESC;


-- average and total rides by casual and member
SELECT
    member_casual,
    COUNT(*) AS total_rides,
    ROUND(
        AVG(TIMESTAMPDIFF(minute, started_at, ended_at)),
        2
    ) AS avg_ride_duration_minutes
FROM all_trip_data_2025
WHERE ended_at > started_at
GROUP BY member_casual
ORDER BY avg_ride_duration_minutes DESC;


-- it converts the all_trip_data_2025 into csv file
SELECT *
FROM all_trip_data_2025
INTO OUTFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/all_trip_data_2025.csv'
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\n';

DELETE FROM trip_data_2025.all_trip_data_2025
WHERE started_at >= '2024-01-01'
AND started_at < '2025-01-01';