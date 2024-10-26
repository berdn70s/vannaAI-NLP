SELECT ip, SUM(bytes) OVER (PARTITION BY ip) AS total_bytes_per_ip
FROM ecms_data
ORDER BY total_bytes_per_ip DESC
LIMIT 10;
--Finds the top 10 IPs by total bytes transferred.

