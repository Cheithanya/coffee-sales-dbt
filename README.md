# Coffee Sales Analytics - GCP + dbt

## Overview
End-to-end Analytics engineering project using Google Bigquery and dbt. Raw coffee sales data is transformed into analytics-ready datasets with testing, documentation, incremental models, snapshots, and CI/CD.

## Architecture
CSV -> GCS -> BigQuery(raw)
-> dbt (staging + marts)
-> BI - ready tables

## Tech Stack
- GCP (GSC + BigQuery)
- dbt core
- SQL
- GitHub Actions (CI/CD)

## Data Models
- **stg_coffee_sales** - cleaned and standardized data
- **coffee_daily_sales** - daily revenue and order metrics
- **coffee_product_sales** - product-level performance
- **Incremental models** with partioning
- **Snapshots** for historical tracking

## Data Quality
- dbt tests (not_null)
- Source definitions
- Documentation & lineage graphs

## CI/CD
- Automated dbt tests using GitHub Actions
- Validates models on every push and PR

## How to run locally
-- bash
dbt run
dbt test
dbt docs serve
