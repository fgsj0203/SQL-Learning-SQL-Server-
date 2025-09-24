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

-- exercise 04: return list of orders "SalesOrderID" and city of client
SELECT ssoh.SalesOrderID as 'ID ordem de venda', sa.City as 'Cidade do cliente'
FROM SalesLT.Customer as sc INNER JOIN SalesLT.SalesOrderHeader as ssoh ON sc.CustomerID = ssoh.CustomerID
INNER JOIN SalesLT.[Address] as sa ON sa.AddressID = ssoh.ShipToAddressID

-- exercise 05: return name of product sales in orders 
SELECT sp.[Name] as 'Nome do produto', ssod.SalesOrderID as 'ID ordem de venda'
FROM SalesLT.[Product] as sp INNER JOIN SalesLT.SalesOrderDetail as ssod 
ON ssod.ProductID = sp.ProductID

-- exercise 06: return ID sales, Order date and name of client
SELECT ssod.SalesOrderID as 'ID de venda', ssoh.OrderDate as 'Data da venda', sc.FirstName + ' ' +sc.LastName as 'Nome cliente'
FROM SalesLT.SalesOrderDetail as ssod INNER JOIN SalesLT.SalesOrderHeader as ssoh ON ssoh.SalesOrderID = ssoh.SalesOrderID
INNER JOIN SalesLT.Customer as sc ON sc.CustomerID = ssoh.CustomerID

-- exercise 07: Return ID of Sales, TotalDue and name of client
SELECT ssoh.SalesOrderID as 'ID ordem de venda', ssoh.TotalDue as 'Valor total', sc.FirstName + ' ' + sc.LastName as 'Nome cliente'
FROM SalesLT.SalesOrderHeader as ssoh INNER JOIN SalesLT.Customer as sc ON ssoh.CustomerID = sc.CustomerID
ORDER BY ssoh.SalesOrderID DESC

-- exercise 08: return clients and your address
SELECT sc.FirstName + ' ' + sc.LastName as 'Nome cliente', sa.AddressLine1 as 'Endereco principal'
FROM SalesLT.Customer as sc INNER JOIN SalesLT.CustomerAddress as sca ON sc.CustomerID = sca.CustomerID
INNER JOIN SalesLT.[Address] as sa ON sa.AddressID = sca.AddressID
