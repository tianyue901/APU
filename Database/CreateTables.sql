CREATE DATABASE IF NOT EXISTS oakpark;
USE oakpark;

DROP TABLE IF EXISTS People;
CREATE TABLE People(PeopleID varchar(36) NOT NULL,
LastName varchar(30), FirstName varchar(30), Gender char(1),
AddressLine1 varchar(100), AddressLine2 varchar(100), 
City varchar(30), State varchar(30), Zipcode varchar(30),
Phone varchar(30), Email varchar(30), Wechat varchar(30),
PRIMARY KEY (PeopleID));

DROP TABLE IF EXISTS Driver;
CREATE TABLE Driver(DriverID varchar(36) NOT NULL,
PeopleID varchar(36) NOT NULL,
VehicleMaker varchar(30), VehicleModel varchar(30), VehicleColor varchar(30),
LicensePlate varchar(30),
FOREIGN KEY DriverID(PeopleID)
REFERENCES People(PeopleID)
ON UPDATE CASCADE
ON DELETE CASCADE);

DROP TABLE IF EXISTS Passenger;
CREATE TABLE Passenger(PassengerID varchar(36) NOT NULL,
PeopleID varchar(36) NOT NULL,
numberOfLuggage int(10),FlightNumber varchar(30),ArrivingDate DATE,
FOREIGN KEY PassengerID(PeopleID)
REFERENCES People(PeopleID)
ON UPDATE CASCADE
ON DELETE CASCADE);