SELECT returned, COUNT(*) AS return_count, AVG(returned_amount) AS avg_return_amount
FROM ecms_data
WHERE returned = 'Yes'
GROUP BY returned;
--Counts returns and averages the return amount for returned items.

