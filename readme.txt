Architecture:

Raw CSV / SQL Data
        ↓
Snowflake (RAW & INTER layers)
        ↓
dbt Models (Staging → Intermediate → Marts)
        ↓
Analytics Mart Tables
        ↓
Python + LLM (Natural Language → SQL → Insights)

The RawData folder contains source data files in their original, unprocessed form.
customer_Data.csv(raw csv)
daily_xraw.csv(raw csv)
transactions2.csv(raw csv)

dbt folder stores the files from dbt tool

dbt / macros (Utility Layer): The macros folder contains reusable SQL logic that can be shared across dbt models, such as schema naming or helper functions.
dbt / models / staging (Staging Layer): The staging layer cleans and standardizes raw data coming from Snowflake.
dbt / models / intermediate (Intermediate Layer): The intermediate layer applies transformations and combines staging models.
dbt / models / marts (Mart Layer): The mart layer contains business‑ready analytical tables.
dbt / models / sources.yml: is a dbt configuration file used to define raw source tables that already exist in the data warehouse (Snowflake).
dbt / dbt_project.yml: It tells dbt how the project is structured, where to find models, and how models should be built in the data warehouse.

llm_app / llm_snowflake.ipynb : This folder contains a Python‑based LLM application implemented as a Jupyter notebook.

snowflake_commands (Infrastructure SQL): Contains SQL scripts for Snowflake infrastructure setup and validation, including
Database and schema creation
RAW and STAGING table setup
Master and validation queries




