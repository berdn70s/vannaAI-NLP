SELECT ip, COUNT(*) AS visit_count
FROM ecms_data
WHERE accessed_date >= '2023-01-01'
GROUP BY ip
HAVING COUNT(*) > 10;
--Identifies IPs with more than 10 visits since the beginning of 2023.