{{ config(materialized='table') }}


select *
from {{ ref('snowflake_customer_order') }}
where {{ var('permission_var') }} and {{ var('size_var') }} >0 