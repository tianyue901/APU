USE oakpark;

DELETE FROM People
WHERE PeopleID="b980d506-7505-11e6-8735-aaaa55ad65ef" AND LastName="Sheng";

DELETE FROM Passenger
WHERE PeopleID="37d43d8a-7506-11e6-8735-aaaa55ad65ef" AND FlightNumber="HU497";

SELECT * from People;
SELECT * from Driver;
SELECT * from Passenger;