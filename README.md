# Faculty Workload Management System

## Overview
This project implements an end-to-end data engineering pipeline to manage faculty workload efficiently.

## Features
- Data ingestion from CSV
- Data cleaning and preprocessing
- Data validation
- Data storage using SQLite
- Pipeline orchestration using Python
- Cloud simulation (Storage, Compute, Warehouse)

## Tech Stack
Python, Pandas, NumPy, SQL (MySQL), Spark, Kafka, Duckdb, Docker(Airflow)

## Project Structure
- raw_data/ → Input datasets
- processed_data/ → Cleaned data
- scripts/ → Pipeline and cloud scripts
- notebooks/ → Task implementations
- sql/ → SQL queries
- logs/ → Pipeline logs

## How to Run
1. Place dataset in raw_data/
2. Run:
   python scripts/pipeline_runner.py

## Future Improvements
- Cloud deployment (AWS/GCP)
- Real-time streaming
- Dashboard integration
