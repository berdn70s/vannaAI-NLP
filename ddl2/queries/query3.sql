--Analyze how the combination of pressure and humidity at 9 am affects whether it rains today.
-- This can help in building a predictive model for rain.
SELECT
    ROUND(Pressure9am / 10) * 10 AS pressure_range,  -- Grouping pressure into ranges of 10 hPa
    ROUND(Humidity9am / 10) * 10 AS humidity_range,  -- Grouping humidity into ranges of 10%
    COUNT(*) AS total_days,
    SUM(CASE WHEN RainToday = 'Yes' THEN 1 ELSE 0 END) AS rainy_days,
    SUM(CASE WHEN RainToday = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*) AS rain_probability
FROM
    weather_aus
GROUP BY
    pressure_range, humidity_range
HAVING
    COUNT(*) > 5  -- Filtering to avoid noise from small sample sizes
ORDER BY
    rain_probability DESC;
