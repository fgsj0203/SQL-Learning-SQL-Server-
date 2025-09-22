/*
Author: Francisco Gomes da Silva Junior
College: Estacio de Sa
Course: Computer Science
Period: 1
Date: 16/09/2025 - in format Brazil
Description: file with exercises beginner of agregation function (COUNT, AVG, MAX, MIN, SUM)
Database: AdventureWorksLT2022
*/

-- exercise 01: return a amount products in table/database
SELECT COUNT (sp.ProductID) as 'Total produtos'
FROM SalesLT.[Product] as sp

-- exercise 02: return a amount clients in table/database
SELECT COUNT (sc.CustomerID) as 'Total clientes'
FROM SalesLT.Customer as sc

-- exercise 03: return of average price products
SELECT AVG(sp.ListPrice) as 'Preco medio dos produtos'
FROM SalesLT.[Product] as sp

-- exercise 04: return a price max and price min of products
SELECT MAX(sp.ListPrice) as 'Maior preco', MIN(sp.ListPrice) as 'Menor preco'
FROM SalesLT.[Product] as sp

-- exercise 05: return a sum of all values prices products
SELECT SUM(sp.ListPrice) as 'Total da soma dos valores do produtos'
FROM SalesLT.[Product] as sp

-- exercise 06: return amount of products if color is not null
SELECT COUNT (sp.ProductID)
FROM SalesLT.[Product] as sp
WHERE sp.Color is NOT NULL
