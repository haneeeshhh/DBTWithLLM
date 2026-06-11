SELECT 
    CASE
        WHEN currency is NULL THEN 'Unknow_currency'
        ELSE currency
    END as currency,
    count(currency) as number_of_transactions,
FROM {{ ref('inter') }}
GROUP by CASE
        WHEN currency is NULL THEN 'Unknow_currency'
        ELSE currency
    END
ORDER BY number_of_transactions DESC
