{{ config(materialized = 'table')}}
SELECT
    segment,
    sum(amount) as Segment_Amt
from {{ ref('inter')}}
group by
    segment
order by Segment_Amt desc
