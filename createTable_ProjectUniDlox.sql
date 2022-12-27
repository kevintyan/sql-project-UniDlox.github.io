--Project UniDlox Clothing Store

--CREATE DATABASE & TABLE FROM BASED ON UniDlox ERD
CREATE DATABASE UniDlox
USE UniDlox


CREATE TABLE Staffs (
	id CHAR(5) PRIMARY KEY CHECK (id LIKE 'SF[0-9][0-9][0-9]'),
	[name] VARCHAR(255) NOT NULL,
	phone_number VARCHAR(255) NOT NULL,
	[address] VARCHAR(255) NOT NULL CHECK(LEN([address]) BETWEEN 5 AND 75),
	age INT NOT NULL,
	gender VARCHAR(255) NOT NULL CHECK(gender in('Male', 'Female')),
	salary INT NOT NULL
)

CREATE TABLE Payments (
	id CHAR(5) PRIMARY KEY CHECK (id LIKE 'PA[0-9][0-9][0-9]'),
	payment_type VARCHAR(255) NOT NULL
)

CREATE TABLE Materials (
	id CHAR(5) PRIMARY KEY CHECK (id LIKE 'MA[0-9][0-9][0-9]'),
	[name] VARCHAR(255) NOT NULL,
	price INT NOT NULL CHECK (price > 0)
)

CREATE TABLE Suppliers(
	id CHAR(5) PRIMARY KEY CHECK (id LIKE 'SU[0-9][0-9][0-9]'),
	[name] VARCHAR(255) NOT NULL,
	phone_number VARCHAR(255) NOT NULL,
	[address] VARCHAR(255) NOT NULL
)

CREATE TABLE Material_Transactions(
	id CHAR(5) PRIMARY KEY CHECK(id LIKE 'PU[0-9][0-9][0-9]'),
	staff_id CHAR(5) NOT NULL FOREIGN KEY REFERENCES Staffs(id),
	payment_id CHAR(5) NOT NULL FOREIGN KEY REFERENCES Payments(id),
	material_id CHAR(5) NOT NULL FOREIGN KEY REFERENCES Materials(id),
	supplier_id CHAR(5) NOT NULL FOREIGN KEY REFERENCES Suppliers(id),
	qty INT NOT NULL,
	transaction_date DATE NOT NULL
)

CREATE TABLE Clothes(
	id CHAR(5) PRIMARY KEY CHECK (id LIKE 'CL[0-9][0-9][0-9]'),
	[name] VARCHAR(255) NOT NULL,
	stock INT NOT NULL,
	price INT NOT NULL
)

CREATE TABLE Customers(
	id CHAR(5) PRIMARY KEY CHECK (id LIKE 'CU[0-9][0-9][0-9]'),
	[name] VARCHAR(255) NOT NULL,
	phone_number VARCHAR(255) NOT NULL,
	[address] VARCHAR(255) NOT NULL,
	gender VARCHAR(255) NOT NULL CHECK(gender IN ('Male','Female')),
	email VARCHAR(255) NOT NULL CHECK(email LIKE '%_@gmail.com' OR email LIKE '%_@yahoo.com'),
	dob DATE NOT NULL
)

CREATE TABLE Transaction_Details(
	id CHAR(5) PRIMARY KEY CHECK (id LIKE 'SA[0-9][0-9][0-9]'),
	cloth_id CHAR(5) FOREIGN KEY REFERENCES Clothes(id),
	customer_id CHAR(5) FOREIGN KEY REFERENCES Customers(id),
	material_transaction_id CHAR(5) FOREIGN KEY REFERENCES Material_Transactions(id),
	payment_id CHAR(5) FOREIGN KEY REFERENCES Payments(id),
	qty INT NOT NULL,
)
