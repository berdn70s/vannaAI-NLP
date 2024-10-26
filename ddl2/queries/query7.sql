--Investigate the relationship between cloud cover and the number of sunshine hours to identify potential patterns.
SELECT
    ROUND(Cloud3pm / 1) * 1 AS cloud_cover_group,  -- Grouping cloud cover into full oktas
    AVG(Sunshine) AS average_sunshine_hours,
    COUNT(*) AS total_days
FROM
        weather_aus

WHERE
    Sunshine IS NOT NULL
GROUP BY
    cloud_cover_group
ORDER BY
    cloud_cover_group ASC;
