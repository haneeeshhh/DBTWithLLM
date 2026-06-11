{{ config(materialized = 'table')}}
SELECT
    customerid,
    customer_name,
    segment,
    relationship_manager,
    SUM(amount) as total_investment,
    count(transactionid) as total_transactions
from {{ ref('inter')}}
group by
    customerid,
    customer_name,
    segment,
    relationship_manager
