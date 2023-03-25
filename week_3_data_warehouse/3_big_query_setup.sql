-- Creating external table referring to gcs path
create or replace external table `zippy-bee-376606.de_zoomcamp.external_fhv_tripdata`
options (
    format = 'csv',
    uris = ['gs://dtc_data_lake_zippy-bee-376606/data/fhv/fhv_tripdata_2019-*.csv.gz']
);

-- Create a non partitioned table from external table
create or replace table zippy-bee-376606.de_zoomcamp.fhv_tripdata_non_partitoned as
select * from zippy-bee-376606.de_zoomcamp.external_fhv_tripdata;