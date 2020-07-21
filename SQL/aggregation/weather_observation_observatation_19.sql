declare @a as float;
declare @b as float;
declare @c as float;
declare @d as float;

select @a = min(lat_n) from station;
select @b = max(lat_n) from station;

select @c = min(long_w) from station;
select @d = max(long_w) from station;

select cast(sqrt(power((@b-@a),2) + power((@d-@c),2)) as decimal(10,4))