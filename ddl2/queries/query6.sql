-- Find days where both the temperature and humidity are unusually high, potentially indicating extreme weather conditions like heatwaves.
SELECT
    Date,
    Location,
    MaxTemp,
    Humidity3pm
FROM
        weather_aus

WHERE
    MaxTemp > (SELECT AVG(MaxTemp) + 2 * STDDEV(MaxTemp) FROM weather_aus)
    AND Humidity3pm > (SELECT AVG(Humidity3pm) + 2 * STDDEV(Humidity3pm) FROM weather_aus)
ORDER BY
    MaxTemp DESC, Humidity3pm DESC;
