# Data-Base-Management-Systems
Projects I made in DBMS. I use Microsoft sql server, Azure Data Studio, Visual paradigm for my projects.

## Table of Contents

- [DBMS](#dbms)
- [SQL](#sql)
- [Relationship](#relationship)
- [Create, Alter, Keys](#create-alter-keys)
- [Select From Where](#select-from-where)
- [Order by, Like, Null, Count, Distinct](#order-by-like-null-count-distinct)


# DBMS

> A database management system (DBMS) is **system software** for *creating and managing databases*. A DBMS makes it possible for end users to **create, protect, read, update and delete** data in a database. The most prevalent type of data management platform, the DBMS essentially serves as an interface between databases and users or application programs, ensuring that data is consistently organized and remains easily accessible.

# SQL

*Structured Query Language* (SQL) let access and manage database.

- execute queries against a database
- retrieve data from a database
- insert records in a database
- update records in a database
- delete records from a database
- create new databases
- create new tables in a database
- create stored procedures in a database
- create views in a database
- set permissions on tables, procedures, and views

# Relationship

- **One to one** -> 
- **One to many** -> 
- **Many to one** -> 
- **Many to many** -> 

<p align="center">
  <img src="https://user-images.githubusercontent.com/102357822/203422574-31ec4946-5b30-4355-85c6-8c0964711711.png">
</p>

## Project Description

Production Tracking Management System; It has a database showing the relationships between assets such as Product, Firm and Raw Material. The Entity-Relationship Diagram of this system is demonstrated with the Visual Paradigm.

1. Product Asset: Contains Code, Name and Total Cost information.
2. Firm Presence: Contains Name and Country information.
3. Raw Material Asset: Contains Code, Name, Quantity and Unit Cost information.
4. Each company can produce more than one product.
5. Each Raw Material can be used in the production of more than one product. Each Product can be created by more than one raw material. The production date of the product created using raw materials and the warranty date of the product should be recorded.

<p align="center">
  <img src="https://user-images.githubusercontent.com/102357822/203422139-391a11ad-8fe3-4e7a-be0e-3226952d92bd.png">
</p>

# Create, Alter, Keys

- **CREATE** -> 
> The CREATE DATABASE statement is used to create a new SQL database.
> The CREATE TABLE statement is used to create a new table in a database.

- **ALTER** -> 
> The ALTER TABLE statement is used to add, delete, or modify columns in an existing table and is also used to add and drop various constraints on an existing table.

- **KEYS** -> 
> The PRIMARY KEY constraint uniquely identifies each record in a table.
Primary keys must contain UNIQUE values, and cannot contain NULL values.
A table can have only ONE primary key; and in the table, this primary key can consist of single or multiple columns (fields).

> The FOREIGN KEY constraint is used to prevent actions that would destroy links between tables.
A FOREIGN KEY is a field (or collection of fields) in one table, that refers to the PRIMARY KEY in another table.
The table with the foreign key is called the child table, and the table with the primary key is called the referenced or parent table.


## Project Description

1. Database name must be VTYSLab2.
2. CustomerID, OrderID and ProductID must not be NULL when creating the table. All other information must be NULL.

<p align="center">
  <img src="https://user-images.githubusercontent.com/102357822/201354061-32a69061-d5c3-43d2-a652-c55ed29b9c61.png">
</p>

# Select From Where

- **SELECT** -> 
> The SELECT statement is used to select data from a database.
The data returned is stored in a result table, called the result-set.

- **FROM** -> 
> The FROM statement is used to specify which table to deal with.

- **WHERE** -> 
> The WHERE clause is used to filter records.
It is used to extract only those records that fulfill a specified condition.

## Project Description

1. Retrieve the data from the Departments table.
2. Bring the job_id data in the jobs table using DISTINCT.
3. Bring the data of employees and jobs working in the Executive Assistant position.
4. Bring the data of employees working in Department B as first_name, last_name and salary.
5. Bring the employees working in Department_B and Executive Assistant position as first_name, last_name and salary.
6. Bring the data of employees working in Department B with salary information as first_name, last_name and salary in descending order.

<p align="center">
  <img src="https://user-images.githubusercontent.com/102357822/202876845-61db2865-28b1-461c-91e5-1698c875968b.png">
</p>


# Order by, Like, Null, Count, Distinct



- **Order by** -> 
> The ORDER BY keyword sorts the records in ascending order by default. To sort the records in descending order, use the DESC keyword.

- **Like** -> 
> The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.
 The percent sign (%) represents zero, one, or multiple characters.
 The underscore sign (_) represents one, single character.
 
- **Null** -> 
> A field with a NULL value is a field with no value.
If a field in a table is optional, it is possible to insert a new record or update a record without adding a value to this field. Then, the field will be saved with a NULL value.

- **Count** -> 
> The COUNT() function returns the number of rows that matches a specified criterion.

- **Distinct** -> 
> The SELECT DISTINCT statement is used to return only distinct (different) values.


## Project Description

1. Bring the customers whose names start with 'a' and surnames start with 'b'.
2. Count how many different products there are.
3. Bring the customer_id, first_name, last_name, phone, order_date, order_status and product_name information of the users who bought the 'Electra Cruiser 1 (24-Inch) - 2016' product and who have phone number information, so that the order date is correct.
4. Sort the products of the 'ELectra' brand in the 'Children Bicycles' category with the 2016-2018 model year by price (brand_name, category_name, product_name, model_year, list_price).
5. Update the numbers of customers with NULL phone numbers as '0123456789'.

<p align="center">
  <img src="https://user-images.githubusercontent.com/102357822/203161896-3808a58b-4822-4df8-bd16-71ec8a28a226.png">
</p>

