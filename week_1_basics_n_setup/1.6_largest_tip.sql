with tmp as (
select "DOLocationID", "tip_amount"
from 
	green_taxi_data g join zones z
	on g."PULocationID" = z."LocationID"
where 
	"Zone" = 'Astoria'
	order by "tip_amount" desc
	limit 1
)
select "DOLocationID", "Zone", "tip_amount"
from
	tmp join zones z
	on tmp."DOLocationID" = z."LocationID";
