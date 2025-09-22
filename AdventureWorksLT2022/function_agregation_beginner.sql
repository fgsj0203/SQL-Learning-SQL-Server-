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
