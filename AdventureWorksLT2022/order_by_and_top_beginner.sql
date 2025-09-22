/*
Author: Francisco Gomes da Silva Junior
College: Estacio de Sa
Course: Computer Science
Period: 1
Date: 16/09/2025 - in format Brazil
Description: file with exercises beginner of clausule "ORDER BY and TOP"
Database: AdventureWorksLT2022
*/


-- exercise 01: return all 10 products with value is bigger
SELECT TOP 10 sp.[Name] as 'Nome produto', sp.ListPrice as 'Preco produto'
FROM SalesLT.[Product] as sp
ORDER BY sp.ListPrice DESC

-- exercise 02: return 10 products is value smaller
SELECT TOP 10 sp.[Name] as 'Nome produto', sp.ListPrice as 'Preco produto'
FROM SalesLT.[Product] as sp
ORDER BY sp.ListPrice ASC

-- exercise 03: return 5 clients with value smaller of column "CustomerID"
SELECT TOP 5 *
FROM SalesLT.Customer as sc
ORDER BY sc.CustomerID ASC

-- exercise 04: return all products in order ascendent
SELECT sp.[Name] as 'Nome produto'
FROM SalesLT.[Product] as sp
ORDER BY sp.[Name] ASC

-- exercise 05: Return all products of listPrice in order decrescent
SELECT *
FROM SalesLT.[Product] as sp
ORDER BY sp.ListPrice DESC

-- exercise 06: return all first 20 clients based in company name
SELECT TOP 20 *
FROM SalesLT.Customer as sc
ORDER BY sc.CompanyName

-- exercise 07: return address ordered by city and column table "AddressLine1"
SELECT *
FROM SalesLT.[Address] as sa
ORDER BY sa.City, sa.AddressLine1

-- exercise 08: return TOP 3 products with bigger value of column "Weight"
SELECT TOP 3 *
FROM SalesLT.[Product] as sp
ORDER BY sp.Weight DESC

-- exercise 09: return 3 products with value smaller and color not created
SELECT TOP 3*
FROM SalesLT.[Product] as sp
WHERE sp.Color IS NULL
ORDER BY sp.ListPrice ASC
