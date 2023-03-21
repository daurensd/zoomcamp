select passenger_count, count(1)
from green_taxi_data
where 
	cast(lpep_pickup_datetime as date) = cast('2019-01-01' as date) and
	passenger_count in (2,3)
group by 1;
