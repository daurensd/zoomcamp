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
