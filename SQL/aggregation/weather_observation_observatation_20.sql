declare @n as int;
select @n = count(lat_n) from station;
-- print @n;

select lat_n, row_number() over (order by lat_n) as row_no
into #test
from station
order by lat_n

-- select * from #test

select cast(lat_n as decimal (10,4))
from #test t
where t.row_no = cast(@n/2 as int)+1