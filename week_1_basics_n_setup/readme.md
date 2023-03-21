# Week 1 Homework
In this homework we'll prepare the environment and practice with Docker and SQL

## Question 1. Knowing docker tags

Run the command to get information on Docker 

```docker --help```

Now run the command to get help on the "docker build" command

Which tag has the following text? - *Write the image ID to the file*

### Solution

Answer is --iidfile string

![docker_build_help](https://github.com/daurensd/zoomcamp/blob/main/week_1_basics_n_setup/1.1_docker_build_help.png)

## Question 2. Understanding docker first run

Run docker with the python:3.9 image in an interactive mode and the entrypoint of bash. Now check the python modules that are installed ( use pip list). How many python packages/modules are installed?

### Solution

Answer is 3.

![python_packages_num](https://github.com/daurensd/zoomcamp/blob/main/week_1_basics_n_setup/1.2_python_packages_num.png)

## Prepare Postgres

Run Postgres and load data as shown in the videos We'll use the green taxi trips from January 2019:

wget https://github.com/DataTalksClub/nyc-tlc-data/releases/download/green/green_tripdata_2019-01.csv.gz

You will also need the dataset with zones:

wget https://s3.amazonaws.com/nyc-tlc/misc/taxi+_zone_lookup.csv

Download this data and put it into Postgres (with jupyter notebooks or with a pipeline)

### Solution

- Created Postgres Database in Docker container. Please see the file [bash_commands](https://github.com/daurensd/zoomcamp/blob/main/week_1_basics_n_setup/bash_commands.yml)
- Uploaded green_tripdata and zones tables to the Database. Please see the file [upload_data.ipynb](https://github.com/daurensd/zoomcamp/blob/main/week_1_basics_n_setup/upload_data.ipynb)
- Created pgAdmin docker container and connected to the Database. Please see the file [bash_commands](https://github.com/daurensd/zoomcamp/blob/main/week_1_basics_n_setup/bash_commands.yml)

## Question 3. Count records

How many taxi trips were totally made on January 15?

Tip: started and finished on 2019-01-15.

### Solution

Answer is 20530.

[1.3_count_records.sql](https://github.com/daurensd/zoomcamp/blob/main/week_1_basics_n_setup/1.3_count_records.sql)

![1.3_count_records](https://github.com/daurensd/zoomcamp/blob/main/week_1_basics_n_setup/1.3_count_records.png)

## Question 4. Largest trip for each day

Which was the day with the largest trip distance? Use the pick up time for your calculations.

Answer is 2019-01-15.

[1.4_largest_trip_for_each_day.sql](https://github.com/daurensd/zoomcamp/blob/main/week_1_basics_n_setup/1.4_largest_trip_for_each_day.sql)

![1.4_largest_trip_for_each_day](https://github.com/daurensd/zoomcamp/blob/main/week_1_basics_n_setup/1.4_largest_trip_for_each_day.sql)
