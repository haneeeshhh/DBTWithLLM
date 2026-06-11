SELECT TransactionType,
    SUM(Amount) as amount,
    count(*) as transactions
from {{ ref('inter') }}
group by 1
order by amount
