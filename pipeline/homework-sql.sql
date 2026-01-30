-- Q3.
SELECT COUNT(*) 
from public.yellow_tripdata
WHERE file_name like 'yellow_tripdata_2020%'


--Q4.
SELECT COUNT(*) 
from public.green_tripdata
WHERE file_name like 'green_tripdata_2020%'


--Q5. 
SELECT COUNT(*)
FROM public.yellow_tripdata
where filename like 'yellow_tripdata_2021-03.csv'