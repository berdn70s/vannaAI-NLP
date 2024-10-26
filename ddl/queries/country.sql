SELECT country, COUNT(DISTINCT ip) AS unique_visitors
FROM ecms_data
GROUP BY country
ORDER BY unique_visitors DESC;
--Counts unique visitors per country.

