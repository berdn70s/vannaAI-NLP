-- Create table for weather data, with comments explaining the columns
CREATE TABLE weather_aus(
    Date DATE,  -- The date when the weather data was recorded.
    Location VARCHAR(50),  -- The location (city or area) where the data was recorded.
    MinTemp FLOAT,  -- The minimum temperature (in Celsius) recorded for the day.
    MaxTemp FLOAT,  -- The maximum temperature (in Celsius) recorded for the day.
    Rainfall FLOAT,  -- The amount of rainfall (in mm) recorded for the day.
    Evaporation FLOAT,  -- The amount of evaporation (in mm) recorded for the day (often a calculated value).
    Sunshine FLOAT,  -- The number of hours of bright sunshine during the day.
    WindGustDir VARCHAR(3),  -- The compass direction (N, NE, E, etc.) of the strongest wind gust during the day.
    WindGustSpeed FLOAT,  -- The speed of the strongest wind gust (in km/h) recorded during the day.
    WindDir9am VARCHAR(3),  -- The compass direction (N, NE, E, etc.) of the wind at 9 am.
    WindDir3pm VARCHAR(3),  -- The compass direction (N, NE, E, etc.) of the wind at 3 pm.
    WindSpeed9am FLOAT,  -- The speed of the wind (in km/h) recorded at 9 am.
    WindSpeed3pm FLOAT,  -- The speed of the wind (in km/h) recorded at 3 pm.
    Humidity9am FLOAT,  -- The relative humidity (in percentage) recorded at 9 am.
    Humidity3pm FLOAT,  -- The relative humidity (in percentage) recorded at 3 pm.
    Pressure9am FLOAT,  -- The atmospheric pressure (in hPa) recorded at 9 am.
    Pressure3pm FLOAT,  -- The atmospheric pressure (in hPa) recorded at 3 pm.
    Cloud9am FLOAT,  -- The cloud cover (in oktas, or eighths) recorded at 9 am.
    Cloud3pm FLOAT,  -- The cloud cover (in oktas, or eighths) recorded at 3 pm.
    Temp9am FLOAT,  -- The temperature (in Celsius) recorded at 9 am.
    Temp3pm FLOAT,  -- The temperature (in Celsius) recorded at 3 pm.
    RainToday VARCHAR(3),  -- Whether it rained today (values: "Yes" or "No").
    RainTomorrow VARCHAR(3)  -- Whether it is expected to rain the next day (values: "Yes" or "No").
);

-- Adding comments to explain each column for better understanding by the model or other users

COMMENT ON COLUMN weather_aus.Date IS 'The date on which the weather data was recorded, formatted as YYYY-MM-DD.';
COMMENT ON COLUMN weather_aus.Location IS 'The name of the location (e.g., city, town) where the weather data was recorded.';
COMMENT ON COLUMN weather_aus.MinTemp IS 'The minimum temperature (in degrees Celsius) observed for the day.';
COMMENT ON COLUMN weather_aus.MaxTemp IS 'The maximum temperature (in degrees Celsius) observed for the day.';
COMMENT ON COLUMN weather_aus.Rainfall IS 'The amount of rainfall (in millimeters) observed during the day.';
COMMENT ON COLUMN weather_aus.Evaporation IS 'The amount of evaporation (in millimeters) during the day, often an estimated value.';
COMMENT ON COLUMN weather_aus.Sunshine IS 'The number of hours of bright sunshine during the day.';
COMMENT ON COLUMN weather_aus.WindGustDir IS 'The compass direction of the strongest wind gust recorded during the day (e.g., N, NE, E, SE, S, etc.).';
COMMENT ON COLUMN weather_aus.WindGustSpeed IS 'The speed of the strongest wind gust recorded during the day (in kilometers per hour).';
COMMENT ON COLUMN weather_aus.WindDir9am IS 'The compass direction of the wind at 9 am (e.g., N, NE, E, SE, etc.).';
COMMENT ON COLUMN weather_aus.WindDir3pm IS 'The compass direction of the wind at 3 pm (e.g., N, NE, E, SE, etc.).';
COMMENT ON COLUMN weather_aus.WindSpeed9am IS 'The wind speed (in kilometers per hour) at 9 am.';
COMMENT ON COLUMN weather_aus.WindSpeed3pm IS 'The wind speed (in kilometers per hour) at 3 pm.';
COMMENT ON COLUMN weather_aus.Humidity9am IS 'The relative humidity (as a percentage) at 9 am.';
COMMENT ON COLUMN weather_aus.Humidity3pm IS 'The relative humidity (as a percentage) at 3 pm.';
COMMENT ON COLUMN weather_aus.Pressure9am IS 'The atmospheric pressure (in hectopascals, hPa) at 9 am.';
COMMENT ON COLUMN weather_aus.Pressure3pm IS 'The atmospheric pressure (in hectopascals, hPa) at 3 pm.';
COMMENT ON COLUMN weather_aus.Cloud9am IS 'The cloud cover measured at 9 am, expressed in oktas (eighths of the sky covered by clouds).';
COMMENT ON COLUMN weather_aus.Cloud3pm IS 'The cloud cover measured at 3 pm, expressed in oktas (eighths of the sky covered by clouds).';
COMMENT ON COLUMN weather_aus.Temp9am IS 'The temperature (in degrees Celsius) recorded at 9 am.';
COMMENT ON COLUMN weather_aus.Temp3pm IS 'The temperature (in degrees Celsius) recorded at 3 pm.';
COMMENT ON COLUMN weather_aus.RainToday IS 'Indicates whether there was rain today ("Yes" or "No").';
COMMENT ON COLUMN weather_aus.RainTomorrow IS 'Indicates whether rain is expected tomorrow ("Yes" or "No").';
