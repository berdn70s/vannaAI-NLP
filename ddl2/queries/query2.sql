-- Find dates where the wind speed at 3 pm is significantly different (e.g., by 50 km/h or more) compared to 9 am at the same location.
-- These could indicate stormy days or rapid changes in weather.
SELECT
    Date,
    Location,
    WindSpeed9am,
    WindSpeed3pm,
    ABS(WindSpeed3pm - WindSpeed9am) AS wind_speed_difference
FROM
    weather_aus
WHERE
    ABS(WindSpeed3pm - WindSpeed9am) >= 50
AND Location = 'Melbourne'
ORDER BY
    wind_speed_difference DESC;
