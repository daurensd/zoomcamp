# Week 5 Homework 

In this homework we'll put what we learned about Spark in practice.

For this homework we will be using the FHVHV 2021-06 data found here. [FHVHV Data](https://github.com/DataTalksClub/nyc-tlc-data/releases/download/fhvhv/fhvhv_tripdata_2021-06.csv.gz )

## Question 1: 

**Install Spark and PySpark** 

- Install Spark
- Run PySpark
- Create a local spark session
- Execute spark.version.

What's the output?

### Solution

Answer is 3.3.2.

![5.1_spark_version](https://github.com/daurensd/zoomcamp/blob/main/week_5_batch_processing/5.1_spark_version.png)

## Question 2: 

**HVFHW June 2021**

Read it with Spark using the same schema as we did in the lessons.</br> 
We will use this dataset for all the remaining questions.</br>
Repartition it to 12 partitions and save it to parquet.</br>
What is the average size of the Parquet (ending with .parquet extension) Files that were created (in MB)? Select the answer which most closely matches.</br>

### Solution

Answer is 24MB.

[5_spark_hw.ipynb](https://github.com/daurensd/zoomcamp/blob/main/week_5_batch_processing/5_spark_hw.ipynb)

![5.2_file_avg_size](https://github.com/daurensd/zoomcamp/blob/main/week_5_batch_processing/5.2_file_avg_size.png)

## Question 3: 

**Count records**  

How many taxi trips were there on June 15?</br></br>
Consider only trips that started on June 15.</br>

### Solution

Answer is 452,470.

[5_spark_hw.ipynb](https://github.com/daurensd/zoomcamp/blob/main/week_5_batch_processing/5_spark_hw.ipynb)

![5.3_trips_num](https://github.com/daurensd/zoomcamp/blob/main/week_5_batch_processing/5.3_trips_num.png)

## Question 4: 

**Longest trip for each day**  

Now calculate the duration for each trip.</br>
How long was the longest trip in Hours?</br>

### Solution

Answer is 66.87 Hours.

[5_spark_hw.ipynb](https://github.com/daurensd/zoomcamp/blob/main/week_5_batch_processing/5_spark_hw.ipynb)

![5.4_max_duration](https://github.com/daurensd/zoomcamp/blob/main/week_5_batch_processing/5.4_max_duration.png)

## Question 5: 

**User Interface**

 Spark’s User Interface which shows application's dashboard runs on which local port?</br>
 
### Solution

Answer is 4040.

![5.5_spark_port](https://github.com/daurensd/zoomcamp/blob/main/week_5_batch_processing/5.5_spark_port.png)

## Question 6: 

**Most frequent pickup location zone**

Load the zone lookup data into a temp view in Spark</br>
[Zone Data](https://github.com/DataTalksClub/nyc-tlc-data/releases/download/misc/taxi_zone_lookup.csv)</br>

Using the zone lookup data and the fhvhv June 2021 data, what is the name of the most frequent pickup location zone?</br>

### Solution

Answer is Crown Heights North.

[5_spark_hw.ipynb](https://github.com/daurensd/zoomcamp/blob/main/week_5_batch_processing/5_spark_hw.ipynb)

![5.6_frequent_pu_location](https://github.com/daurensd/zoomcamp/blob/main/week_5_batch_processing/5.6_frequent_pu_location.png)
