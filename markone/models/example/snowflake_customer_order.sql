{{ config(materialized='ephemeral') }}

select c.c_custkey,c.c_name,sum(o_totalprice) as totalprice
 from "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."CUSTOMER" c,
"SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."ORDERS" o 
where c.c_custkey=o.o_custkey
group by c.c_custkey,c.c_name
having sum(o_totalprice) > 2000000



