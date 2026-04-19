*/

/* SECTION 1 CREATE TABLE STATEMENTS */


CREATE TABLE adck923Bus 
(
BusID integer primary key, 
Start_Position varchar(50), 
Termination_Stop varchar(50),
Bus_Number integer
);
    
CREATE TABLE adck923Bus_model 
(
Model_number varchar(255) primary key, 
Height varchar(10) ,
Width varchar(10),
Number_of_Levels integer, 
Seats_number integer
);

CREATE TABLE adck923Bus_Bus_model 
(
BusID integer,
Model_number varchar(255),
foreign key(BusID) references adck923Bus(BusID),
foreign key(Model_number) references adck923Bus_model(Model_number)
);

    
CREATE TABLE adck923Contract 
(
ContractNO varchar(20) primary key,
Salary varchar(50),
Allowed_Holidays integer, 
Start_Year integer,
End_Year integer
);



CREATE TABLE adck923Payment
(
ID varchar(16) primary key, 
fare varchar(20) ,
Type_of_pass varchar(20),
BusID integer,
foreign key (BusID) references adck923Bus (BusID)
);

    
CREATE TABLE adck923Timetable 
(
TimetableNO varchar(20) primary key, 
Start_of_Shift varchar(10), 
End_of_Shift varchar(10),
Contracted_Hours_perweek integer,
Allocated_Breaks_perweek integer, 
Days_of_Work_perweek integer, 
Bus_allocated varchar(5) 
);

CREATE TABLE adck923Driver 
(
DriverID varchar(20) primary key,
First_Name varchar(20), 
Surname varchar(20), 
Phone_Number char(11), 
Email varchar(50),
Postcode varchar(10), 
Additional_Info_Allergies varchar(50),
ContractNO varchar(20),
TimetableNO varchar(20), 
BusID integer, 
FOREIGN KEY (ContractNO) REFERENCES adck923Contract (ContractNO) ON DELETE CASCADE,
FOREIGN KEY (TimetableNO) REFERENCES adck923Timetable (TimetableNO) ON DELETE CASCADE,
FOREIGN KEY (BusID) REFERENCES adck923Bus (BusID)
);


/* SECTION 2 INSERT STATEMENTS */



insert into adck923Bus values 
(76321,'Ilford','Oxford Circus','25'),
(23721,'Poplar','Mile End','77'),
(32912,'Bow Church','Paddington','205'),
(92547,'Mile End','Canning Town','323'),
(38741,'Crossharbour','Ash Grove','66'),
(93420,'Stratford','Clapton', '425'),
(11738,'Hackney Wick', 'Marble Arch','30'),
(56123,'Whipps Cross', 'Saint Patricks Hospital','56'),
(83823,'Hackney Wick', 'Finsbury park','236'),
(65162,'Leyton','Woodford Bridge','114'),
(21389,'Crossharbour','Marble Arch','277'),
(31342,'Bow Church','Oxford Circus','8');

insert into adck923Bus_model values
('VW12DoubleDecker','8Meters','13Meters',2,75),
('VWSingleDecker02','5Meters','13Meters',1,36),
('BMWg200','10Meters','15Meters',2,82),
('TFLSingleDecker','8Meters','11Meters',1,45),
('CorsaG100','10Meters','16Meters',3,91),
('VWDD56TFL','13Meters','16Meters',4,80),
('ToyotaZ09','10Meters','15Meters',2,68),
('CorsaL101','9Meters','13Meters',3,75),
('VolvoT20','11Meters','18Meters',3,90),
('VolvoUJ700','9Meters','13Meters',2,90),
('NissanGL00','7Meters','12Meters',1,60),
('Nissan9GGG','10Meters','13Meters',3,75);

insert into adck923Bus_Bus_model values
(76321,'VW12DoubleDecker'),
(23721,'VWSingleDecker02'),
(32912,'BMWg200'),
(92547,'TFLSingleDecker'),
(38741,'CorsaG100'),
(93420,'VWDD56TFL'),
(11738,'ToyotaZ09'),
(56123,'CorsaL101'),
(83823,'VolvoT20'),
(65162,'VolvoUJ700'),
(21389,'NissanGL00'),
(31342,'Nissan9GGG');


insert into adck923Contract values
('C1000','£26,500',28,2014,2023),
('C2000','£30,000',30,2015,2024),
('C3000','£22,560',20,2017,2021),
('C4000','£35,500',28,2016,2024),
('C5000','£40,000',21,2012,2022),
('C6000','£31,000',28,2018,2024),
('C7000','£30,000',28,2016,2024),
('C8000','£20,000',25,2020,2025),
('C9000','£24,000',20,2019,2024),
('C1100','£47,000',28,2013,2026),
('C1200','£39,000',30,2016,2021),
('C1300','£40,000',26,2013,2021);


insert into adck923Payment values
('000111000111','£1.55','Adult',76321),
('111222111222','£0.80','Child',23721),
('222333222333','FREE','Freedom',32912),
('332218965123','£2.50','Adult',92547),
('445572638184','FREE','Voucher',38741),
('667753728926','£0.80','Child',93420),
('889902482854','£1.55','Adult',11738),
('005573924628','£2.50','Adult',56123),
('391232872387','£1.20','Child',83823),
('518392038382','£1.20','Child',65162),
('2313i4319849','FREE','Voucher',21389),
('104301314313','£1.55','Child',31342),
('923391481443','£1.20','Child',11738),
('129392347383','£0.80','Child',31342),
('323213123u21','£1','DayPASS',23721),
('004938382737','£1','ChildDayPass',23721),
('321312342494','£3','CASH',76321);


insert into adck923Timetable values
('T1000','09:00','17:00',40,5,5,'25'),
('T2000','11:00','18:00',30,3,4,'77'),
('T3000','08:00','14:00',35,5,7,'205'),
('T4000','15:00','21:00',20,3,5,'323'),
('T5000','09:00','12:00',10,3,3,'66'),
('T6000','18:00','23:30',16,5,5,'425'),
('T7000','16:00','21:00',16,5,5,'30'),
('T8000','09:00','21:00',45,9,6,'56'),
('T9000','08:00','13:00',25,5,5,'236'),
('T1100','09:00','15:00',30,6,6,'114'),
('T1200','10:00','18:00',40,7,7,'277'),
('T1300','14:00','22:00',40,6,6,'8');

insert into adck923Driver values
('D1000','John','Maclain','07517168823','John10@hotmail.com','SW314','No allergies/info','C1000','T1000',76321),
('D2000','Adam','Werner','03818315391','Adamwerner_@hotmail.com','E563H','Asthma','C2000','T2000',23721),
('D3000','Paul','Pogba','03321790542','paullabille@hotmail.com','NW987','No allergies/info','C3000','T3000',32912),
('D4000','Sarah','Lance','07864318542','Sarahlance32@hotmail.com','E14ZQL','Nut allergy//Gluten','C4000','T4000',92547),
('D5000','Maryam','Khan','07956823215','KhanM@gmail.com','S14DZ','No allergies/info','C5000','T5000',38741),
('D6000','Sharau','Khan','07215658903','SharauK@outlook.com','SW21Z','Rubber allergy','C6000','T6000',93420),
('D7000','Robert','Lane','07432894513','Robert563@hotmail.com','E15DJ','No allergies/info','C7000','T7000',11738),
('D8000','Karandeep','Singh','07921789439','Kdeep@city.ac.uk','N14EDZ','Wheat allergy','C8000','T8000',56123),
('D9000','Maya','Longstaff','07895237865','Mayalongstaff322@hotmail.com','N26EQL','No allergies','C9000','T9000',83823),
('D1100','Bruno','Fernandes','07457541866','brunof12@hotmail.com','W12JL','Asthma','C1100','T1100',65162),
('D1200','Martin','Gray','07214885419','grayM@gmail.com','WJ3UP','No allergies','C1200','T1200',21389),
('D1300','Sergio','Garcia','07563189275','Sergiogarcia@hotmail.com','W12EP','No allergies','C1300','T1300',31342);




/* SECTION 3 UPDATE STATEMENTS */

UPDATE adck923Contract SET Salary= '£45,000' WHERE ContractNO = 'C5000';
UPDATE adck923Timetable SET Start_of_Shift = '17:00', End_of_Shift= '23:00' WHERE TimetableNO = 'T7000';





/* SECTION 4 SINGLE TABLE QUERIES */


/* 1) List the start years of all the drivers in ascending order.  */

SELECT Start_Year FROM adck923Contract order by Start_year ASC;

/* 2) Give the average start year of all the drivers. */

SELECT AVG (Start_Year)
FROM adck923Contract;

/* 3) List all the buses that have a BusID greater than 40000. */

SELECT BusID, Bus_Number
FROM adck923Bus 
WHERE BusID > 40000;

/* 4) List the names of all the bus numbers and their start and end positions.  */

SELECT Bus_Number,Start_Position,Termination_Stop FROM adck923Bus WHERE BusID is not null;

/* 5) List all the contractNO and salary where the driver started between 2016-2019. */

SELECT ContractNO,Salary FROM adck923Contract WHERE Start_Year>= 2016 and Start_Year<=2019;

/* 6) List all the drivers first name,surname and phone number whose postcode begins with 'E'. */

SELECT First_Name,Surname,Phone_Number FROM adck923Driver WHERE Postcode like 'E%';



/* SECTION 5 MULTIPLE TABLE QUERIES */




/* 1) List the DriverID, first name and surname of those who drive the '77' bus. */

SELECT DriverID,First_Name,Surname FROM adck923Driver WHERE TimetableNO in(SELECT TimetableNO FROM adck923Timetable WHERE Bus_allocated = '77');

/* 2) List the Payment ID's,fare and type of pass of those went on the bus '25' or BusID '76321'. */

SELECT ID,fare,Type_of_pass FROM adck923Payment WHERE BusID in(SELECT BusID FROM adck923Bus WHERE BusID = 76321 and Bus_Number = '25' );

/* 3) List the first name, email and phone number of the drivers who work exactly 5 days a week.*/

SELECT First_Name,Phone_Number,Email FROM adck923Driver WHERE TimetableNO in(SELECT TIMETABLENO FROM adck923Timetable WHERE Days_of_Work_perweek = 5 );

/* 4) List the Driver ID,surname, postcode and contractNO of the drivers whose start year is before 2015 and end year before 2026. */

SELECT DriverID,Surname,Postcode,ContractNO
FROM adck923Driver 
WHERE ContractNO in
(SELECT ContractNO FROM adck923Contract WHERE Start_Year <2015 and End_Year <2026);

/* 5) Give a summary of the Drivers timetable along with their full name, the bus they drive and its start and end position. */

SELECT adck923Driver.First_Name,adck923Driver.Surname,adck923Bus.Start_Position,adck923Bus.Termination_Stop,adck923Bus.Bus_Number,adck923Timetable.Start_of_Shift,adck923Timetable.End_of_Shift,adck923Timetable.Contracted_Hours_perweek,adck923Timetable.Days_of_Work_perweek
FROM adck923Bus
INNER JOIN adck923Driver ON adck923Bus.BusID = adck923Driver.BusID
INNER JOIN adck923Timetable ON adck923Driver.TimetableNO = adck923Timetable.TimetableNO;

/* 6) Give the first name,surname, phone number and postcode of the drivers who have more than 26 allowed holidays.  */

SELECT First_Name,Surname,Phone_Number,Email FROM adck923Driver WHERE ContractNO in (SELECT ContractNO FROM adck923Contract WHERE Allowed_Holidays >= '26');




/* SECTION 6 DELETE ROWS (make sure the SQL is commented out in this section)

DELETE FROM adck923Contract WHERE End_Year = 2026;
DELETE FROM adck923Timetable WHERE Bus_Allocated = 114;

*/



/* SECTION 7 DROP TABLES (make sure the SQL is commented out in this section)

DROP TABLE adck923Driver;
DROP TABLE adck923Timetable;
DROP TABLE adck923Payment;
DROP TABLE adck923Contract;
DROP TABLE adck923Bus_Bus_model;
DROP TABLE adck923Bus_model;
DROP TABLE adck923Bus;

*/






    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

