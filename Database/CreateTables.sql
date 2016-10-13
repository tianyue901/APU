CREATE DATABASE IF NOT EXISTS APU;
USE APU;

SET foreign_key_checks = 0;
DROP TABLE IF EXISTS People;
SET foreign_key_checks = 1;
CREATE TABLE People(people_id binary(16) NOT NULL,
last_name varchar(30), first_name varchar(30), gender char(1),
address_line1 varchar(100), address_line2 varchar(100), 
city varchar(30), state varchar(30), zipcode varchar(30),
phone varchar(30), email varchar(30), wechat varchar(30),
PRIMARY KEY (people_id));

SET foreign_key_checks = 0;
DROP TABLE IF EXISTS Driver;
SET foreign_key_checks = 1;
CREATE TABLE Driver(
people_id binary(16) NOT NULL,
vehicle_maker varchar(30), vehicle_model varchar(30), vehicle_color varchar(30),
license_plate varchar(30),
PRIMARY KEY (people_id),
FOREIGN KEY (people_id) REFERENCES People(people_id)
ON UPDATE CASCADE
ON DELETE CASCADE);

SET foreign_key_checks = 0;
DROP TABLE IF EXISTS Passenger;
SET foreign_key_checks = 1;
CREATE TABLE Passenger(people_id binary(16) NOT NULL,
number_luggage int(10),flight_number varchar(30),arriving_date DATE,
PRIMARY KEY (people_id),
FOREIGN KEY (people_id) REFERENCES People(people_id)
ON UPDATE CASCADE
ON DELETE CASCADE);

SET foreign_key_checks = 0;
DROP TABLE IF EXISTS Agent;
SET foreign_key_checks = 1;
CREATE TABLE Agent(people_id binary(16) NOT NULL,
username varchar(30), password varchar(30),
PRIMARY KEY (people_id),
FOREIGN KEY (people_id) REFERENCES People(people_id)
ON UPDATE CASCADE
ON DELETE CASCADE);

DROP TABLE IF EXISTS driver_passenger_link;
CREATE TABLE driver_passenger_link(link_id binary(16) NOT NULL,
driver_id binary(16),
passenger_id binary(16),
modified_date DATE,
PRIMARY KEY (link_id)
);
