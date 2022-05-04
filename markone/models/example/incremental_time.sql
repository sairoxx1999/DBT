{{config(materialized='incremental', unique_key='t_time_id')}}

select * from "SNOWFLAKE_SAMPLE_DATA"."TPCDS_SF10TCL"."TIME_DIM" 
where concat(t_hour, ':', t_minute, ':', t_second) <= current_time

{% if is_incremental() %}
    and t_time > (select max(t_time) from {{this}})
{% endif %}