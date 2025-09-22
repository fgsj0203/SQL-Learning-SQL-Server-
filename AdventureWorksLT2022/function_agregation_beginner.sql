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

-- exercise 07: return a average of value weight procuts
SELECT AVG(sp.[Weight]) as 'Media de peso dos produtos'
FROM SalesLT.[Product] as sp

-- exercise 08: return product with bigger weight
SELECT MAX(sp.Weight) as 'Produto mais pesado'
FROM SalesLT.[Product] as sp

-- exercise 09: return amount clients with email is not null
SELECT COUNT(sc.CustomerID) as 'Clientes com email valido'
FROM SalesLT.Customer as sc
WHERE sc.EmailAddress is NOT NULL

-- exercise 10: return amount address for city
SELECT sa.City as 'Cidade', COUNT (sa.AddressID) as 'Endereco por cidade'
FROM SalesLT.[Address] as sa
GROUP BY sa.City
