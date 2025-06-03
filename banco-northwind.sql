-- CREATE DATABASE Northwind;
-- USE Northwind;

-- Tabela: Suppliers
CREATE TABLE Suppliers (
    SupplierID INT,
    SupplierName VARCHAR(100),
    ContactName VARCHAR(100),
    Address VARCHAR(150),
    City VARCHAR(50),
    PostalCode VARCHAR(20),
    Country VARCHAR(50),
    Phone VARCHAR(20)
);

-- Tabela: Categories
CREATE TABLE Categories (
    CategoryID INT,
    CategoryName VARCHAR(100),
    Description TEXT
);

-- Tabela: Products
CREATE TABLE Products (
    ProductID INT,
    ProductName VARCHAR(100),
    SupplierID INT,
    CategoryID INT,
    Unit VARCHAR(50),
    Price DECIMAL(10,2)
);

-- Tabela: Customers
CREATE TABLE Customers (
    CustomerID INT,
    CustomerName VARCHAR(100),
    Address VARCHAR(150),
    City VARCHAR(50),
    PostalCode VARCHAR(20),
    Country VARCHAR(50)
);

-- Tabela: Employees
CREATE TABLE Employees (
    EmployeeID INT,
    LastName VARCHAR(50),
    FirstName VARCHAR(50),
    BirthDate DATE,
    Photo VARCHAR(255),
    Notes TEXT
);

-- Tabela: Orders
CREATE TABLE Orders (
    OrderID INT,
    CustomerID INT,
    EmployeeID INT,
    OrderDate DATE,
    ShipperID INT
);

-- Tabela: OrderDetails
CREATE TABLE OrderDetails (
    OrderDetailID INT,
    OrderID INT,
    ProductID INT,
    Quantity INT
);

-- Tabela: Shippers
CREATE TABLE Shippers (
    ShipperID INT,
    ShipperName VARCHAR(100),
    Phone VARCHAR(20)
);
