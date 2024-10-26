SELECT language, SUM(bytes) AS total_bytes
FROM ecms_data
GROUP BY language
ORDER BY total_bytes DESC;
--Sums and ranks languages by total data transfer.

