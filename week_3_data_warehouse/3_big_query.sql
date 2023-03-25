-- Setup
-- Creating external table referring to gcs path
create or replace external table `zippy-bee-376606.de_zoomcamp.external_fhv_tripdata`
options (
    format = 'csv',
    uris = ['gs://dtc_data_lake_zippy-bee-376606/data/fhv/fhv_tripdata_2019-*.csv.gz']
);

-- Setup
-- Create a non partitioned table from external table
create or replace table zippy-bee-376606.de_zoomcamp.fhv_tripdata_non_partitoned as
select * 
from zippy-bee-376606.de_zoomcamp.external_fhv_tripdata;

-- Question 1
select count(*) FROM zippy-bee-376606.de_zoomcamp.fhv_tripdata_non_partitoned;

-- Question 2
select count(distinct Affiliated_base_number) from zippy-bee-376606.de_zoomcamp.external_fhv_tripdata;
select count(distinct Affiliated_base_number) from zippy-bee-376606.de_zoomcamp.fhv_tripdata_non_partitoned;

-- Question 3
select count(*) from zippy-bee-376606.de_zoomcamp.external_fhv_tripdata
where PUlocationID is null and DOlocationID is null;

-- Question 5
create or replace table zippy-bee-376606.de_zoomcamp.fhv_tripdata_partitoned_clustered
partition by date(pickup_datetime)
cluster by Affiliated_base_number as
select * from zippy-bee-376606.de_zoomcamp.external_fhv_tripdata;

select distinct Affiliated_base_number
from zippy-bee-376606.de_zoomcamp.fhv_tripdata_non_partitoned
where date(pickup_datetime) BETWEEN '2019-03-01' AND '2019-03-31';

select distinct Affiliated_base_number
from zippy-bee-376606.de_zoomcamp.fhv_tripdata_partitoned_clustered
where date(pickup_datetime) BETWEEN '2019-03-01' AND '2019-03-31';