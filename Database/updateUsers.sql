USE oakpark;

UPDATE People SET Email="pipposheng@hotmail.com" 
WHERE PeopleID="b980d506-7505-11e6-8735-aaaa55ad65ef";

UPDATE People SET Wechat="billw27"
WHERE PeopleID="37d43d8a-7506-11e6-8735-aaaa55ad65ef";

UPDATE Driver SET VehicleMaker="HONDA"
WHERE PeopleID="b980d506-7505-11e6-8735-aaaa55ad65ef";

UPDATE Passenger SET numberOfLuggage=1
WHERE PeopleID="37d43d8a-7506-11e6-8735-aaaa55ad65ef";

SELECT * from People;
SELECT * from Driver;
SELECT * from Passenger;