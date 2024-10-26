SELECT network_protocol, SUM(bytes) AS total_bytes
FROM ecms_data
GROUP BY network_protocol
ORDER BY total_bytes DESC;
--Sums and orders data transfer by network protocol.

