USE oakpark;

INSERT INTO People VALUES (
"b980d506-7505-11e6-8735-aaaa55ad65ef", 
"Sheng", "Biqing", "M", "1193 S Grove Ave", "Unit 3", 
"Oak Park", "IL", "60304", 
"8505668553", "pipposheng@gmail.com", "shengbiqing");

INSERT INTO People VALUES (
"37d43d8a-7506-11e6-8735-aaaa55ad65ef", 
"Wang", "Bill", "M", "1139 S Oak Park Ave", "Unit D", 
"Oak Park", "IL", "60304", 
"##########", "tianyue901@gmail.com", "tianyue901");

INSERT INTO Driver VALUES (
"4e30a6b8-7506-11e6-8735-aaaa55ad65ef", 
"b980d506-7505-11e6-8735-aaaa55ad65ef",
"VW", "Tiguan", "Grey", "V771599");

INSERT INTO Passenger VALUES (
"80e05860-7506-11e6-8735-aaaa55ad65ef",
"37d43d8a-7506-11e6-8735-aaaa55ad65ef",
2, "HU497", "2016-06-23");

SELECT * from People;
SELECT * from Driver;
SELECT * from Passenger;
 
