SELECT AVG(duration_(secs)) AS average_duration, country
FROM ecms_data
GROUP BY country
ORDER BY average_duration DESC;

--Shows average session duration per country, ordered by duration.