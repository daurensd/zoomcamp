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

## Question 1:
What is the count for fhv vehicle records for year 2019?
