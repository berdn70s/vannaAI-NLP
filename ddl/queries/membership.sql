SELECT membership, AVG(duration_(secs)) AS avg_duration, COUNT(*) AS member_count
FROM ecms_data
GROUP BY membership;
--Averages session duration and counts members by membership type.

