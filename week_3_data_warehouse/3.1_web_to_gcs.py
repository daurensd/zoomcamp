from pathlib import Path
import pandas as pd
from prefect import flow, task
from prefect_gcp.cloud_storage import GcsBucket
from random import randint
import numpy as np


@task(retries=3)
def fetch(dataset_url: str) -> pd.DataFrame:
    """Read taxi data from web into pandas DataFrame"""

    df = pd.read_csv(dataset_url)
    # df = df.head(10)
    return df


# @task(log_prints=True)
# def clean(df: pd.DataFrame) -> pd.DataFrame:
#     """Fix dtype issues"""
#     df["pickup_datetime"] = pd.to_datetime(df["pickup_datetime"])
#     df["dropOff_datetime"] = pd.to_datetime(df["dropOff_datetime"])
#     print(df.head(2))
#     print(f"columns: {df.dtypes}")
#     print(f"rows: {len(df)}")
#     return df


@task()
def write_local(df: pd.DataFrame, service: str, dataset_file: str) -> Path:
    """Write DataFrame out locally as parquet file"""
    path = Path(f"data/{service}/{dataset_file}.csv.gz")
    df.to_csv(path)
    return path


@task()
def write_gcs(path: Path) -> None:
    """Upload local parquet file to GCS"""
    gcs_block = GcsBucket.load("zoom-gcs")
    gcs_block.upload_from_path(from_path=path, to_path=path)
    return


@flow()
def etl_web_to_gcs(year: int, month: int, service: str) -> None:
    """The main ETL function"""
    dataset_file = f"{service}_tripdata_{year}-{month:02}"
    dataset_url = f"https://github.com/DataTalksClub/nyc-tlc-data/releases/download/{service}/{dataset_file}.csv.gz"

    df = fetch(dataset_url)
    # df_clean = clean(df)
    path = write_local(df, service, dataset_file)
    write_gcs(path)


@flow()
def etl_parent_flow(months: list[int] = [1, 2], year: int = 2019, service: str = "fhv"):
    for month in months:
        etl_web_to_gcs(year, month, service)


if __name__ == "__main__":
    service = "fhv"
    months = list(np.arange(1,13))
    year = 2019
    etl_parent_flow(months, year, service)
