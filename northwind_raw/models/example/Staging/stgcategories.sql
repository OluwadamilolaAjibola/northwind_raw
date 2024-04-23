{{ config(materialized='table') }}

with source_data as (

    select * from {{source(raw,categories_raw)}}

)

select *
from source_data