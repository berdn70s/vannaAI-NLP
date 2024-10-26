SELECT age, AVG(sales) AS average_sales
FROM ecms_data
GROUP BY age
ORDER BY average_sales DESC
LIMIT 10;
--Shows top 10 ages by average sales.

