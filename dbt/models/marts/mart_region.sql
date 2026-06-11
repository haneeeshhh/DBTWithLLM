{{ config(materialized = 'table')}}
SELECT
    CASE
        WHEN security_region is NULL THEN 'Unknown_Region'
        ELSE security_region
    END as security_region,
    sum(amount) as total
from {{ ref('inter')}}
group by CASE
        WHEN security_region is NULL THEN 'Unknown_Region'
        ELSE security_region
    END
