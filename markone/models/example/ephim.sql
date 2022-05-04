{{ config(materialized='table') }}


select * from {{ ref('snowflake_customer_order') }}