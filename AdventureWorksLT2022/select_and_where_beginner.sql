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

-- exercise 07: return all products a color is "black"
SELECT *
FROM SalesLT.Product as sp
WHERE sp.Color = 'Black'


-- exercise 08: return name of clients in companies started letter "A"
SELECT sc.FirstName + ' ' + sc.MiddleName as 'Nome completo', sc.CompanyName as 'Nome empresa'
FROM SalesLT.Customer as sc
WHERE sc.CompanyName LIKE 'A%'

-- exercise 09: return all clients with name started a word "Bike"
SELECT *
FROM SalesLT.Customer as sc
WHERE sc.CompanyName LIKE '%Bike%'

------------------------------------------------------------------------------
-- exercise 10: return all address of column AddressLine1
SELECT sa.AddressLine1 as 'Endereco principal'
FROM SalesLT.[Address] as sa

-- updating exercise 10: return data of all columns with AddressLine1
SELECT *
FROM SalesLT.[Address] as sa
------------------------------------------------------------------------------

-- exercise 11: return all address in city Seattle
SELECT *
FROM SalesLT.[Address] as sa
WHERE sa.City = 'Seattle'

-- exercise 12: return all cities and states differents in column Address
SELECT DISTINCT sa.City as 'Cidade', sa.StateProvince as 'Estados/Provincia'
FROM SalesLT.[Address] as sa

-- exercise 13: return name of products with value equal 500
SELECT *
FROM SalesLT.[Product] as sp
WHERE sp.ListPrice = 500

-- exercise 14: return all products is weight value bigger 10
SELECT *
FROM SalesLT.[Product] as sp
WHERE sp.Weight > 10
