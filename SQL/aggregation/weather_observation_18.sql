--Consider  and  to be two points on a 2D plane.
-- happens to equal the minimum value in Northern Latitude (LAT_N in STATION).
-- happens to equal the minimum value in Western Longitude (LONG_W in STATION).
-- happens to equal the maximum value in Northern Latitude (LAT_N in STATION).
-- happens to equal the maximum value in Western Longitude (LONG_W in STATION).
--Query the Manhattan Distance between points  and  and round it to a scale of  decimal places.

declare @lat1 as float;
declare @long1 as float;
declare @lat2 as float;
declare @long2 as float;

select @lat1 = min(lat_n) from station;
select @long1 = min(long_w) from station;

select @lat2 = max(lat_n) from station;
select @long2 = max(long_w) from station;

select cast(abs(@lat2-@lat1) + abs(@long2-@long1) as decimal(10,4))
