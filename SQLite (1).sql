-- Create the database HASTANE
CREATE DATABASE HASTANE;

-- Use the database HASTANE
USE HASTANE;

-- Create table Hasta
CREATE TABLE Hasta(
    HastaId int NOT NULL PRIMARY KEY,
    Soyad nvarchar(20) NOT NULL,
    Ad nvarchar(20) NOT NULL,
    Cinsiyet nchar(1) NOT NULL,
    Boy float NOT NULL,
    Kilo float NOT NULL
);

-- Insert data into Hasta table
INSERT INTO Hasta(HastaId, Soyad, Ad, Cinsiyet, Boy, Kilo) 
VALUES(15223, 'Smith', 'Deniz', 'F', 158, 47);

INSERT INTO Hasta(HastaId, Soyad, Ad, Cinsiyet, Boy, Kilo)
VALUES
    (15224, 'Agarwal', 'Arjun', 'M', 192, 89),
    (15225, 'Adams', 'Poopy', 'F', 185, 92);

-- Select records where Boy > 160 or Kilo < 85
SELECT Ad, Soyad, Boy, Kilo
FROM Hasta
WHERE Boy > 160 OR Kilo < 85;

-- Select all records and order by Boy ascending
SELECT Ad, Soyad, Boy, Kilo
FROM Hasta
ORDER BY Boy ASC;

-- Select the average Boy
SELECT AVG(Boy)
FROM Hasta;

-- Count the number of records where Boy > 160
SELECT COUNT(*)
FROM Hasta
WHERE Boy > 160;

-- Update Kilo for the record where HastaId is 15223
UPDATE Hasta
SET Kilo = 55
WHERE HastaId = 15223;

-- Delete the record where HastaId is 15223
DELETE FROM Hasta
WHERE HastaId = 15223;
