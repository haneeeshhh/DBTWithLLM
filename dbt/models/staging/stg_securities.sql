select 
    c1 as date,
    c2 as isin,
    c3 as security_name,
    c4 as Security_Region,
    c5 as Asset_Type,
    c6 as Sub_Asset_Type,
    c7 as currency,
    c8 as Price,

    CASE
        WHEN TRY_TO_NUMBER(C8) is NULL THEN 'MISSING_PRICE'
        ELSE 'VALID'
    END AS Price_status
FROM {{ source('raw', 'daily_xraw')}}
WHERE UPPER(C1) <> 'DATE'
