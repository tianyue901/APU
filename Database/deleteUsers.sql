USE APU;

DELETE FROM People
WHERE people_id="b980d506-7505-11e6-8735-aaaa55ad65ef" AND last_name="Sheng";

DELETE FROM Passenger
WHERE people_id="37d43d8a-7506-11e6-8735-aaaa55ad65ef" AND flight_number="HU497";

SELECT * from People;
SELECT * from Driver;
SELECT * from Passenger;