{{ config(materialized='ephemeral') }}

With customer_nation_region as (
  SELECT * from {{ source('src','customers')}}
    JOIN {{ source('src','nations')}}
        ON n_nationkey=c_nationkey
            JOIN {{ source('src','regions')}}
                ON n_regionkey=r_regionkey
)

SELECT
r_name as region,
n_name as nation,
n_nationkey as nation_key,
c_name as customer_name,
c_acctbal as account_balance,
c_mktsegment as market_segment
    FROM customer_nation_region
