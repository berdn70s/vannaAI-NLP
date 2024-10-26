SELECT country, SUM(returned_amount) AS total_returned_amount
FROM ecms_data
GROUP BY country
ORDER BY total_returned_amount DESC;
--Sums returned amounts by country.

