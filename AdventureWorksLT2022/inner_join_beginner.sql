/*
Author: Francisco Gomes da Silva Junior
College: Estacio de Sa
Course: Computer Science
Period: 1
Date: 16/09/2025 - in format Brazil
Description: file with exercises beginner of INNER JOIN beginner
Database: AdventureWorksLT2022
*/

-- exercise 01:return name products and name of subcategory 
SELECT sp.[Name] as 'Nome produto', spc.[Name] as 'Nome Categoria'
FROM SalesLT.[Product] as sp INNER JOIN SalesLT.ProductCategory as spc ON sp.ProductCategoryID = spc.ProductCategoryID

-- exercise 02: return name clients with data of column "SalesOrderID" 
SELECT sc.FirstName + ' ' + sc.LastName as 'Nome cliente', ssoh.SalesOrderID as 'ID de venda'
FROM SalesLT.Customer as sc INNER JOIN SalesLT.SalesOrderHeader as ssoh 
ON sc.CustomerID = ssoh.CustomerID

-- exercise 03: return a list of orders and name company of client
SELECT ssoh.SalesOrderID as 'ID de ordem da venda', sc.CompanyName as 'Nome da empresa'
FROM SalesLT.SalesOrderHeader as ssoh INNER JOIN SalesLT.Customer as sc ON ssoh.CustomerID = sc.CustomerID
