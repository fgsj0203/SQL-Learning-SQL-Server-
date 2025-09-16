/*
Author: Francisco Gomes da Silva Junior
College: Estacio de Sa
Course: Computer Science
Period: 1
Date: 15/09/2025 - in format Brazil
Description: file with exercises beginner of clausule "SELECT and WHERE"
Database: AdventureWorksLT2022
*/




-- Script for search column directly in tables
SELECT
    TABLE_NAME,
    COLUMN_NAME,
    DATA_TYPE,
    CHARACTER_MAXIMUM_LENGTH
FROM
    INFORMATION_SCHEMA.COLUMNS
WHERE
    COLUMN_NAME = 'Amount'
-------------------------------------------------

-- exercise 01: return name of product and ID Product
SELECT sp.Name as 'Nome produto', sp.ProductID as 'ID Produto'
FROM SalesLT.Product as sp

-- exercise 02: return name of clients and ID Customer
SELECT sc.FirstName + ' ' + sc.LastName as 'Nome completo / Cliente', sc.CustomerID as 'ID do Cliente' 
FROM SalesLT.Customer as sc

---------------------------------------------------
-- exercise 03: return name and price of product
SELECT sp.[Name] as 'Nome do Produto', sp.ListPrice as 'Preco do produto'
FROM SalesLT.Product as sp

-- Updating exercise 03 = round value of price a next decimal number
SELECT sp.[Name] as 'Nome do Produto', sp.ListPrice as 'Preco original', ROUND(sp.ListPrice,0) as 'Valor do produto / arredondado'
FROM SalesLT.Product as sp

---------------------------------------------------

-- exercise 04: return names of product is bigger 1000
SELECT *
FROM SalesLT.Product as sp
WHERE sp.ListPrice > 1000

-- exercise 05: return products with price is smaller of value 50
SELECT *
FROM SalesLT.Product as sp
WHERE sp.ListPrice < 50

-- exercise 06: return all products with column name color is null
SELECT *
FROM SalesLT.Product as sp
WHERE sp.Color IS NULL
