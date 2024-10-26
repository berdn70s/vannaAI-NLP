--Check how different wind gust directions affect the probability of rain tomorrow.
-- This can reveal relationships between wind patterns and rain prediction.
SELECT
    WindGustDir,
    COUNT(*) AS total_days,
    SUM(CASE WHEN RainTomorrow = 'Yes' THEN 1 ELSE 0 END) AS rainy_days,
    SUM(CASE WHEN RainTomorrow = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS rain_tomorrow_probability
FROM
    weather_aus
WHERE
    WindGustDir IS NOT NULL
GROUP BY
    WindGustDir
ORDER BY
    rain_tomorrow_probability DESC;
