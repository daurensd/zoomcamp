select count(1) 
from green_taxi_data
where 
	cast(lpep_pickup_datetime as date) = cast('2019-01-15' as date) and
	cast(lpep_dropoff_datetime as date) = cast('2019-01-15' as date);
