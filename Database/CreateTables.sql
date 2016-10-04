CREATE DATABASE IF NOT EXISTS APU;
USE APU;

DROP TABLE IF EXISTS People;
CREATE TABLE People(people_id binary(16) NOT NULL,
last_name varchar(30), first_name varchar(30), gender char(1),
address_line1 varchar(100), address_line2 varchar(100), 
city varchar(30), state varchar(30), zipcode varchar(30),
phone varchar(30), email varchar(30), wechat varchar(30),
PRIMARY KEY (people_id));

DROP TABLE IF EXISTS Driver;
CREATE TABLE Driver(
people_id binary(16) NOT NULL,
vehicle_maker varchar(30), vehicle_model varchar(30), vehicle_color varchar(30),
license_plate varchar(30),
PRIMARY KEY (people_id),
FOREIGN KEY (people_id) REFERENCES People(people_id)
ON UPDATE CASCADE
ON DELETE CASCADE);

DROP TABLE IF EXISTS Passenger;
CREATE TABLE Passenger(people_id binary(16) NOT NULL,
number_luggage int(10),flight_number varchar(30),arriving_date DATE,
PRIMARY KEY (people_id),
FOREIGN KEY (people_id) REFERENCES People(people_id)
ON UPDATE CASCADE
ON DELETE CASCADE);

