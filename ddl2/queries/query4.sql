--Find the longest streak of consecutive dry days before it rains in each location.
-- This could help detect patterns of dry periods leading to rainfall.
WITH streaks AS (
    SELECT
        Date,
        Location,
        RainToday,
        LAG(RainToday) OVER (PARTITION BY Location ORDER BY Date) AS previous_rain,
        CASE
            WHEN RainToday = 'No' AND LAG(RainToday) OVER (PARTITION BY Location ORDER BY Date) = 'No' THEN 0
            WHEN RainToday = 'Yes' THEN 1
        END AS streak_end
    FROM
            weather_aus

),
consecutive_dry_days AS (
    SELECT
        Location,
        COUNT(*) AS dry_days_before_rain
    FROM
        streaks
    WHERE
        streak_end = 1  -- Marks the end of dry streak
    GROUP BY
        Location
)
SELECT
    Location,
    MAX(dry_days_before_rain) AS longest_dry_streak
FROM
    consecutive_dry_days
GROUP BY
    Location;
