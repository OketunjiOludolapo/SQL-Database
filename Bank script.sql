-- Created by Oketunji Oludolapo--
CREATE DATABASE Tutorial;
USE Tutorial;
CREATE TABLE Employees(
Emp_id INT PRIMARY KEY,
First_name VARCHAR(25),
Last_name VARCHAR(25),
Sex VARCHAR(1),
Dob  DATE,
Employement_year YEAR,
Marital_status VARCHAR(10),
Branch_id INT);

CREATE TABLE Branch(
Branch_id INT PRIMARY KEY,
Branch_name VARCHAR(15),
Mgr_id INT);

ALTER TABLE Branch
ADD FOREIGN KEY (Mgr_id) REFERENCES Employees(Emp_id) ON DELETE SET NULL;

ALTER TABLE Employees
ADD FOREIGN KEY (Branch_id) REFERENCES Branch(Branch_id) ON DELETE SET NULL;

CREATE TABLE Clients(
Client_id INT PRIMARY KEY,
First_name VARCHAR(20),
Last_name VARCHAR(20),
Branch_id INT,
Account_officer_id INT,
Registered_Date YEAR,
Account_Balance INT
);

ALTER TABLE Clients
ADD FOREIGN KEY (Branch_id)  REFERENCES Branch(Branch_id) ON DELETE SET NULL;
ALTER TABLE Clients
ADD FOREIGN KEY (Account_officer_id)  REFERENCES Employees(Emp_id) ON DELETE SET NULL;

INSERT INTO Employees VALUES(100,"Mike","Scott","M","1972-08-19","1994","Married",NULL);
INSERT INTO Branch VALUES(1,"Finland",100);
UPDATE Employees
SET Branch_id=1
WHERE Emp_id=100;

INSERT INTO Employees VALUES(101,"Hope","Mikaelson","F","1990-08-19","2016","Married",NULL);
INSERT INTO Employees VALUES(102,"Angela","Prescott","F","1996-02-05","2019","Single",NULL);
INSERT INTO Employees VALUES(103,"Maggie","Dreyer","F","1975-11-30","1998","Married",NULL);
INSERT INTO Branch VALUES(2,"Sweden",103);

UPDATE Employees
SET Branch_id=2
WHERE Emp_id IN (101,103);

INSERT INTO Employees VALUES(104,"Samuel","Denning","M","1994-04-21","2020","Single",1);
INSERT INTO Employees VALUES(105,"James","Evan","M","1985-03-15","2014","Single",NULL);
INSERT INTO Employees VALUES(106,"Max","Smith","M","1990-05-05","2015","Single",2);
INSERT INTO Employees VALUES(107,"Alexandra","Carlos","F","1980-07-25","2003","Married",NULL);

INSERT INTO Branch VALUES(3,"London",107);
UPDATE Employees
SET Branch_id=3
WHERE Emp_id in (102,105,107);

INSERT INTO Employees VALUES(108,"Priyanka","Kumar","F","1970-12-22","2000","Married",1);
INSERT INTO Employees VALUES(109,"Jude","Allen","M","1998-04-07","2021","Married",2);

INSERT INTO Clients VALUES (1,"Schmitt","Carine",2,109,"2005",120500);
INSERT INTO Clients VALUES (2,"King","Jean",1,104,"2021",50000);
INSERT INTO Clients VALUES (3,"Peter","Ferguson",2,101,"2016",15000);
INSERT INTO Clients VALUES (4,"Janine","Labrune",3,102,"1998",5000);
INSERT INTO Clients VALUES (5,"Nelson","Roland",1,104,"1995",20000);
INSERT INTO Clients VALUES (6,"Susan","Murphy",3,105,"2014",200000);
INSERT INTO Clients VALUES (7,"Julie","Zbyszek",3,105,"2015",40000);
INSERT INTO Clients VALUES (8,"Christina","Freyre",2,106,"2015",60000);
INSERT INTO Clients VALUES (9,"Mary","Petersen",1,108,"2001",800000);
INSERT INTO Clients VALUES (10,"Leong","Lee",1,104,"2002",2000000);
INSERT INTO Clients VALUES (11,"Eric","Saveley",2,109,"2021",2000);
INSERT INTO Clients VALUES (12,"Kelvin","Natividad",2,106,"2016",420000);
INSERT INTO Clients VALUES (13,"Elizabeth","Michealson",3,105,"2000",550200);
INSERT INTO Clients VALUES (14,"Stefan","Salvatore",1,104,"2020",4500);
INSERT INTO Clients VALUES (15,"Bonnie","Bennett",3,105,"2014",55000);

