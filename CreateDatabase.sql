-- Creating a new database
CREATE DATABASE new_database;

-- Delete database
DROP DATABASE new_database;
DROP DATABASE data_base;

-- Backup database to certain file path
# BACKUP DATABASE

USE new_database;
-- Create a table
CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);

-- Truncate
TRUNCATE Persons;

-- Alter Table -->  Add Column
ALTER TABLE Persons
ADD Email varchar(255);

-- Alter Table --> Drop Column
ALTER TABLE Persons
DROP Email;

-- Alter Table --> Rename Column
ALTER TABLE Persons
RENAME COLUMN Email to Email_id;

