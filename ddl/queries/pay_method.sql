SELECT pay_method, COUNT(*) AS transaction_count
FROM ecms_data
GROUP BY pay_method
ORDER BY transaction_count DESC;
--Counts transactions by payment method.

