CREATE DATABASE VTYSLab2

USE VTYSLab2

CREATE TABLE customer (
CustomerID int NOT NULL,
CustomerIdentityNumber nvarchar(11) NULL,
CustomerName nvarchar(20) NULL,
CustomerSurname nvarchar(20) NULL)

CREATE TABLE ordertable(
OrderID int NOT NULL,
OrderCount int NULL,
OrderAddress nvarchar(255) NULL)

CREATE TABLE Product(
ProductID int NOT NULL,
ProductName nvarchar(50) NULL,
ProductPrice decimal(10, 2) NULL,
ProductCount int NULL)

ALTER TABLE customer ADD PRIMARY KEY (CustomerID);
ALTER TABLE ordertable ADD PRIMARY KEY (OrderID);
ALTER TABLE Product ADD PRIMARY KEY (ProductID);

ALTER TABLE ordertable ADD CustomerID int
ALTER TABLE ordertable ADD FOREIGN KEY (CustomerID) REFERENCES customer(CustomerID)

ALTER TABLE ordertable ADD ProductID int
ALTER TABLE ordertable ADD FOREIGN KEY (ProductID) REFERENCES Product(ProductID)


