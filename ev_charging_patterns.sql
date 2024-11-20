CREATE DATABASE IF NOT EXISTS ev_charging_patterns;
USE ev_charging_patterns;


DROP TABLE IF EXISTS chargers;
CREATE TABLE chargers (
charger_type varchar(15) PRIMARY KEY NOT NULL,
type_of_current char(2) DEFAULT NULL,
voltage char(4) DEFAULT NULL,
connector_type varchar(5) DEFAULT NULL,
avg_charge_time_from_empty varchar(13) DEFAULT NULL,
connector_image text DEFAULT NULL
);

DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
city varchar(13) PRIMARY KEY NOT NULL,
state_id char(2) DEFAULT NULL,
state_name varchar(10) DEFAULT NULL,
lat float DEFAULT NULL,
lng float DEFAULT NULL
);

DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
vehicle_model varchar(13) PRIMARY KEY NOT NULL,
vehicle_brand text DEFAULT NULL,
ev_type text DEFAULT NULL,
logo text DEFAULT NULL
);

DROP TABLE IF EXISTS patterns;
CREATE TABLE patterns (
user_id int PRIMARY KEY NOT NULL,
vehicle_model varchar(13) DEFAULT NULL,
battery_capacity_kWh float DEFAULT NULL,
charging_station_id int DEFAULT NULL,
charging_station_location varchar(13) DEFAULT NULL,
charging_start datetime DEFAULT NULL,
charging_end datetime DEFAULT NULL,
energy_consumed_kWh float DEFAULT NULL,
charging_duration_hours float DEFAULT NULL,
charging_rate_kW float DEFAULT NULL,
charging_cost_usd float DEFAULT NULL,
time_of_day varchar(9) DEFAULT NULL,
day_of_week varchar(9) DEFAULT NULL,
state_of_charge_start float DEFAULT NULL,
state_of_charge_end float DEFAULT NULL,
distance_driven_since_last_charge_Km float DEFAULT NULL,
temperature_celsius float DEFAULT NULL,
vehicle_age_years int DEFAULT NULL,
charger_type varchar(15) DEFAULT NULL,
user_type varchar(22) DEFAULT NULL,
FOREIGN KEY (charger_type) REFERENCES chargers(charger_type),
FOREIGN KEY (charging_station_location) REFERENCES cities(city),
FOREIGN KEY (vehicle_model) REFERENCES cars(vehicle_model)
);



