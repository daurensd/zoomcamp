select cast(lpep_pickup_datetime as date), trip_distance
from green_taxi_data
order by 2 desc
limit 10;
