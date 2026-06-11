{{ config(materialized = 'table')}}
SELECT
    CASE
        WHEN ASSET_TYPE IS NULL THEN 'UNKNOWN_ASSET'
        ELSE ASSET_TYPE
    END as Asset_Type,
    SUM(Amount) as total_amount,
    count(*) as transaction_count,
FROM {{ ref('inter')}}
GROUP BY CASE
        WHEN ASSET_TYPE IS NULL THEN 'UNKNOWN_ASSET'
        ELSE ASSET_TYPE
    END
