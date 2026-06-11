SELECT 
    customerid,
    name as customer_name,
    segment,
    type as customer_type,
    rm as relationship_manager,
    tl as team_lead,
    sh as section_head,
    area
FROM {{ source('raw', 'customer_data') }}
