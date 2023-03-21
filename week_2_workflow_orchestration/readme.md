# Week 2 Homework
The goal of this homework is to familiarise users with workflow orchestration and observation.

## Question 1. Load January 2020 data

Using the etl_web_to_gcs.py flow that loads taxi data into GCS as a guide, create a flow that loads the green taxi CSV dataset for January 2020 into GCS and run it. Look at the logs to find out how many rows the dataset has.

How many rows does that dataset have?

### Solution

Answer is 447,770

[2.1_etl_web_to_gcs.py](https://github.com/daurensd/zoomcamp/blob/main/week_2_workflow_orchestration/2.1_etl_web_to_gcs.py)

![2.1_etl_web_to_gcs](https://github.com/daurensd/zoomcamp/blob/main/week_2_workflow_orchestration/2.1_etl_web_to_gcs.png)

![2.1_etl_web_to_gcs_bucket_details](https://github.com/daurensd/zoomcamp/blob/main/week_2_workflow_orchestration/2.1_etl_web_to_gcs_bucket_details.png)

## Question 2. Scheduling with Cron

Cron is a common scheduling specification for workflows.

Using the flow in etl_web_to_gcs.py, create a deployment to run on the first of every month at 5am UTC. What’s the cron schedule for that?

### Solution

Answer is `0 5 1 * *`

![2.2_scheduling_with_cron](https://github.com/daurensd/zoomcamp/blob/main/week_2_workflow_orchestration/2.2_scheduling_with_cron.png)

## Question 3. Loading data to BigQuery

Using `etl_gcs_to_bq.py` as a starting point, modify the script for extracting data from GCS and loading it into BigQuery. This new script should not fill or remove rows with missing values. (The script is really just doing the E and L parts of ETL).

The main flow should print the total number of rows processed by the script. Set the flow decorator to log the print statement.

Parametrize the entrypoint flow to accept a list of months, a year, and a taxi color. 

Make any other necessary changes to the code for it to function as required.

Create a deployment for this flow to run in a local subprocess with local flow code storage (the defaults).

Make sure you have the parquet data files for Yellow taxi data for Feb. 2019 and March 2019 loaded in GCS. Run your deployment to append this data to your BiqQuery table. How many rows did your flow code process?

### Solution

Answer is 14,851,920

[2.3_etl_web_to_gcs_v2](https://github.com/daurensd/zoomcamp/blob/main/week_2_workflow_orchestration/2.3_etl_web_to_gcs_v2.py)

[2.3_etl_gcs_to_bq](https://github.com/daurensd/zoomcamp/blob/main/week_2_workflow_orchestration/2.3_etl_gcs_to_bq.py)

![2.3_number_of_rows](https://github.com/daurensd/zoomcamp/blob/main/week_2_workflow_orchestration/2.3_number_of_rows.png)

![2.3_gcs](https://github.com/daurensd/zoomcamp/blob/main/week_2_workflow_orchestration/2.3_gcs.png)

![2.3_bq](https://github.com/daurensd/zoomcamp/blob/main/week_2_workflow_orchestration/2.3_bq.png)
