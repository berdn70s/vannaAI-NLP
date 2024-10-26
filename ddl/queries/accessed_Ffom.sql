SELECT accessed_Ffom, COUNT(*) AS usage_count
FROM ecms_data
GROUP BY accessed_Ffom
ORDER BY usage_count DESC;
--Counts sessions by the type of browser or platform used.


