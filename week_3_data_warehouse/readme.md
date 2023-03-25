# Week 3 Homework

<b><u>Important Note:</b></u> <p>You can load the data however you would like, but keep the files in .GZ Format. 
If you are using orchestration such as Airflow or Prefect do not load the data into Big Query using the orchestrator.</br> 
Stop with loading the files into a bucket. </br></br>
<u>NOTE:</u> You can use the CSV option for the GZ files when creating an External Table</br>

<b>SETUP:</b></br>
Create an external table using the fhv 2019 data. </br>
Create a table in BQ using the fhv 2019 data (do not partition or cluster this table). </br>
Data can be found here: https://github.com/DataTalksClub/nyc-tlc-data/releases/tag/fhv </p>

### Solution
[3_web_to_gcs.py](https://github.com/daurensd/zoomcamp/blob/main/week_3_data_warehouse/3_web_to_gcs.py)

![3_web_to_gcs](https://github.com/daurensd/zoomcamp/blob/main/week_3_data_warehouse/3_web_to_gcs.png)

[3_big_query.sql](https://github.com/daurensd/zoomcamp/blob/main/week_3_data_warehouse/3_big_query.sql)

## Question 1:
What is the count for fhv vehicle records for year 2019?

### Solution

Answer is 43,244,696.

[3_big_query.sql](https://github.com/daurensd/zoomcamp/blob/main/week_3_data_warehouse/3_big_query.sql)

![3.1_fhv_count](https://github.com/daurensd/zoomcamp/blob/main/week_3_data_warehouse/3.1_fhv_count.png)

## Question 2:

Write a query to count the distinct number of affiliated_base_number for the entire dataset on both the tables.
What is the estimated amount of data that will be read when this query is executed on the External Table and the Table?

### Solution

Answer is 0 MB for the External Table and 317.94MB for the BQ Table

[3_big_query.sql](https://github.com/daurensd/zoomcamp/blob/main/week_3_data_warehouse/3_big_query.sql)

![3.2_external_table](https://github.com/daurensd/zoomcamp/blob/main/week_3_data_warehouse/3.2_external_table.png)

![3.2_bq_table](https://github.com/daurensd/zoomcamp/blob/main/week_3_data_warehouse/3.2_bq_table.png)

## Question 3:

How many records have both a blank (null) PUlocationID and DOlocationID in the entire dataset?

### Solution

Answer is 717,748.

[3_big_query.sql](https://github.com/daurensd/zoomcamp/blob/main/week_3_data_warehouse/3_big_query.sql)

![3.3_location_blank_records](https://github.com/daurensd/zoomcamp/blob/main/week_3_data_warehouse/3.3_location_blank_records.png)

## Question 4:

What is the best strategy to optimize the table if query always filter by pickup_datetime and order by affiliated_base_number?

### Solution

Answer is Partition by pickup_datetime Cluster on affiliated_base_number.

## Question 5:

Implement the optimized solution you chose for question 4. Write a query to retrieve the distinct affiliated_base_number between pickup_datetime 2019/03/01 and 2019/03/31 (inclusive).
Use the BQ table you created earlier in your from clause and note the estimated bytes. Now change the table in the from clause to the partitioned table you created for question 4 and note the estimated bytes processed. What are these values? Choose the answer which most closely matches.

### Solution

Answer is 647.87 MB for non-partitioned table and 23.05 MB for the partitioned table.

[3_big_query.sql](https://github.com/daurensd/zoomcamp/blob/main/week_3_data_warehouse/3_big_query.sql)

![3.5_non_partitioned](https://github.com/daurensd/zoomcamp/blob/main/week_3_data_warehouse/3.5_non_partitioned.png)

![3.5_partitioned](https://github.com/daurensd/zoomcamp/blob/main/week_3_data_warehouse/3.5_partitioned.png)

## Question 6:

Where is the data stored in the External Table you created?

### Solution

Answer is GCP Bucket.

## Question 7:

It is best practice in Big Query to always cluster your data.

### Solution

Not always. For cases with small amount of data it is better not to use cluster.

Answer is False.
