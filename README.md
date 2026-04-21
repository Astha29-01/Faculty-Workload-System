# Faculty Workload Management System

## Overview
This project implements an end-to-end data engineering pipeline to manage faculty workload efficiently.

## Problem Statement
Manual workload management leads to inefficiency and inconsistent data handling.

## Solution
A complete data pipeline was built to automate ingestion, processing, validation, and storage.

## Features
- Data ingestion from CSV
- Data cleaning using Pandas
- Data validation (null, duplicate, invalid values)
- SQL-based storage (SQLite)
- Spark-based processing
- Kafka streaming simulation
- Cloud simulation (Storage, Compute, Warehouse)

## Architecture
Raw Data → Ingestion → Cleaning → Validation → Storage → Logs

## Tech Stack
Python, Pandas, NumPy, SQL, Spark, Kafka, Docker(Airflow), Duckdb

## How to Run
1. Place dataset in raw_data/
2. Run:
   python scripts/pipeline_runner.py

## Project Structure
- raw_data/
- processed_data/
- scripts/
- notebooks/
- sql/
- logs/

## Future Scope
- Cloud deployment
- Real-time analytics
- Dashboard integration
