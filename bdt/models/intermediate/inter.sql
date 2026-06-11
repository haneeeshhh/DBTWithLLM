{{ config(materialized= 'table')}}

SELECT 
    t.TransactionID,
    t.Date,
    t.CustomerID,
    c.customer_name,
    c.segment,
    c.customer_type,
    c.relationship_manager,
    c.area,

    t.isin,
    s.security_name,
    s.Security_Region,
    s.Asset_Type,
    s.Sub_Asset_Type,
    s.currency,
    s.Price_status,

    t.Quantity,
    t.Price,
    t.Amount,
    t.TransactionType

FROM {{ ref('stg_transaction')}} t
LEFT JOIN {{ ref('stg_customer')}} c 
    on t.customerid = c.customerid
LEFT JOIN {{ ref('stg_securities')}} s 
    on t.isin = s.isin
