SELECT accessed_date, COUNT(*) AS session_count
FROM ecms_data
GROUP BY accessed_date
ORDER BY session_count DESC
LIMIT 5;

--Finds the top 5 dates with the most sessions.
