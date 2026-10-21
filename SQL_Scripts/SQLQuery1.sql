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