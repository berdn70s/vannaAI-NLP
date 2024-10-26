SELECT ip, SUM(sales) AS total_sales
FROM ecms_data
GROUP BY ip
ORDER BY total_sales DESC
LIMIT 5;
--Finds the top 5 IPs by total sales.

 