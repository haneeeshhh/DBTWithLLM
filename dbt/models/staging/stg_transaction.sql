SELECT 
    TransactionID,
    Date,
    CustomerID,
    ISIN,
    Quantity,
    Price,
    Amount,
    TransactionType
FROM {{ source('raw', 'transactions')}}
