/* Createdatabase */
CREATE DATABASE Banking;
GO

/* Select the Banking DB */
USE Banking;
GO

/* Create Tables */
CREATE TABLE customer_information (
    Customer_id int IDENTITY(1,1) NOT NULL UNIQUE PRIMARY KEY,
    Customer_name NVARCHAR(255) NOT NULL,
    Customer_email NVARCHAR(255) NOT NULL,
    Customer_phone int NOT NULL,
    Customer_password NVARCHAR(255) NOT NULL,
    Customer_address NVARCHAR(255) NOT NULL,
    Customer_other_details NVARCHAR(255) NULL,
);

CREATE TABLE Merchant_information (
    Merchant_id int IDENTITY(1,1) NOT NULL UNIQUE PRIMARY KEY,
    Merchant_name NVARCHAR(255) NOT NULL,
    Merchant_phone int NOT NULL,
    Merchant_email NVARCHAR(255) NOT NULL,
    Merhcant_other_details NVARCHAR(255) NULL,
);

CREATE TABLE Purchase_information (
    Purchase_id int IDENTITY(1,1) NOT NULL UNIQUE PRIMARY KEY,
    Customer_id int NOT NULL FOREIGN KEY REFERENCES customer_information(Customer_id),
    Product_id int NOT NULL FOREIGN KEY REFERENCES Product_information(Product_id), 
    Purchase_date DATE NOT NULL CHECK (Purchase_date <= GETDATE()),
    Purchase_quantity int NOT NULL,
    Purchase_other_details NVARCHAR(255) NULL,
);

CREATE TABLE Product_information (
    Product_id int IDENTITY(1,1) NOT NULL UNIQUE PRIMARY KEY,
    Merchant_id int NOT NULL FOREIGN KEY REFERENCES Merchant_information(Merchant_id),
    Product_other_details NVARCHAR(255) NULL,
);

CREATE TABLE Account_information (
    Account_id int IDENTITY(1,1) NOT NULL UNIQUE PRIMARY KEY,
    Customer_id int NOT NULL FOREIGN KEY REFERENCES customer_information(Customer_id),
    Account_type NVARCHAR(255) NOT NULL,
    Account_name NVARCHAR(255) NOT NULL,
    Date_opened DATE NOT NULL CHECK (Date_opened <= GETDATE()),
    Account_other_details NVARCHAR(255) NULL,
)

CREATE TABLE Transaction_information (
    Transaction_id int IDENTITY(1,1) NOT NULL UNIQUE PRIMARY KEY,
    Purchase_id int NOT NULL FOREIGN KEY REFERENCES Purchase_information(Purchase_id),
    Account_id int NOT NULL FOREIGN KEY REFERENCES Account_information(Account_id),
    Transaction_date DATE NOT NULL CHECK (Transaction_date <- GETDATE()),
    Transaction_amount int NOT NULL,
    Transaction_other_details NVARCHAR NULL,
)