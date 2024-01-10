{{ config(materialized='incremental', query_tag='inc-run-04')}}

select * from {{ref('stg_nations')}}
