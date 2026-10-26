create database DW;



CREATE TABLE DimDate (

Datekey INT IDENTITY(1,1) PRIMARY KEY,
ReleaseYear NVARCHAR(4)

);



CREATE TABLE DimGenre (

    GenreKey INT IDENTITY(1,1) PRIMARY KEY,
    Show_Id NVARCHAR(50),
    Genre NVARCHAR(255)

);



CREATE TABLE DimShow (

    ShowKey INT IDENTITY(1,1) PRIMARY KEY,
    Show_Id NVARCHAR(50),
    Category NVARCHAR(50),
    Title NVARCHAR(4000),
    Director NVARCHAR(4000),
    Country NVARCHAR(4000),
    Rating NVARCHAR(50),
    Duration NVARCHAR(100)

);



CREATE TABLE FactNetflix (

    FactKey INT IDENTITY(1,1) PRIMARY KEY,
    ShowKey INT FOREIGN KEY REFERENCES DimShow(ShowKey),
    Datekey INT FOREIGN KEY REFERENCES DimDate(Datekey),
    GenreKey INT FOREIGN KEY REFERENCES DimGenre(GenreKey)

);

-- 1. Disable foreign key checks across the database
EXEC sp_MSforeachtable 'ALTER TABLE ? NOCHECK CONSTRAINT ALL';

-- 2. Use DELETE instead of TRUNCATE to clear the table data
DELETE FROM DimGenre;

-- 3. Re-enable all foreign key constraints
EXEC sp_MSforeachtable 'ALTER TABLE ? CHECK CONSTRAINT ALL';