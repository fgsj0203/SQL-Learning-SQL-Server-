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
