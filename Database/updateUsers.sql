USE APU;

UPDATE People SET email="pipposheng@hotmail.com" 
WHERE people_id="b980d506-7505-11e6-8735-aaaa55ad65ef";

UPDATE People SET wechat="billw27"
WHERE people_id="37d43d8a-7506-11e6-8735-aaaa55ad65ef";

UPDATE Driver SET vehicle_maker="HONDA"
WHERE people_id="b980d506-7505-11e6-8735-aaaa55ad65ef";

UPDATE Passenger SET number_luggage=1
WHERE people_id="37d43d8a-7506-11e6-8735-aaaa55ad65ef";

SELECT * from People;
SELECT * from Driver;
SELECT * from Passenger;