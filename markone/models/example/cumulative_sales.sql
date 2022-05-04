select distinct
    o_orderdate,
    sum(o_totalprice) over (order by o_orderdate) as cumulative_sales

from "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."ORDERS"
where year(o_orderdate) = 1994
order by o_orderdate