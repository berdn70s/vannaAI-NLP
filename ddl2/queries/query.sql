-- Get the total and average rainfall for each month at a specific location over the years, showing trends and seasonal effects.
SELECT
    EXTRACT(YEAR FROM Date) AS year,
    EXTRACT(MONTH FROM Date) AS month,
    Location,
    SUM(Rainfall) AS total_rainfall,
    AVG(Rainfall) AS average_rainfall,
    COUNT(*) AS rainy_days
FROM 
    weather_aus
WHERE 
    Location = 'Sydney'
GROUP BY 
    year, month, Location
ORDER BY 
    year, month;
