SELECT
    relationship_manager,
    SUM(Amount) as ASSET_UNDER_MANAGEMENT,
    COUNT (DISTINCT customerid) AS CUSTOMER_MANAGED
FROM {{ ref('inter')}}
group by relationship_manager
