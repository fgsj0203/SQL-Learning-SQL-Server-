/*
Author: Francisco Gomes da Silva Junior
College: Estácio de Sá
Course: Computer Science
Period: 1º
Date: 09/09/2025 - in format Brazil
Description: file with exercises beginner with clausules "SELECT and ORDER BY"
Database: AdventureWorks2022
*/

-- exercise 01: return all names and middle names of Person.Person
SELECT ppe.FirstName as 'Primeiro Nome', ppe.MiddleName as 'Nome do meio'
FROM Person.Person as ppe

-- exercise 02: return all names distincts of job title in HumanResources.Employee
SELECT distinct he.JobTitle as 'Cargo' -- using clausule "distinct"
FROM HumanResources.Employee as he

-- exercise 03: return all products in table Production.Product
SELECT ppro.ProductNumber as 'Numero produto', ppro.Name as 'Nome do produto'
FROM Production.Product as ppro

-- exercise 04: return all products with price smaller 1000
SELECT *
FROM Production.Product as ppro
WHERE ppro.ListPrice < 1000

-- exercise 05: return all products with color is black
SELECT *
FROM Production.Product as ppro
WHERE ppro.Color = 'Black'

-- exercise 06: return clients in table Sales.Customer
SELECT sc.CustomerID as 'ID do cliente', sc.PersonID as 'ID Pessoal'
FROM Sales.Customer as sc

-- exercise 07: return all address of table Person.Address
SELECT pad.AddressLine1 as 'Endereco principal', pad.City as 'Cidade', pad.PostalCode as 'CEP'
FROM Person.[Address] as pad

-- exercise 08: return all employee if signed contract in 2009
SELECT *
FROM HumanResources.Employee as he
WHERE YEAR(he.HireDate) = 2009

-- exercise 09: return all departments in table HumanResources.Department
SELECT hde.Name as 'Nome do departamento'
FROM HumanResources.Department as hde

-- exercise 10: Return all shifts in table HumanResource.Shift
SELECT hs.Name as 'Nome', hs.StartTime as 'Inicio do turno', hs.EndTime as 'Fim do turno'
FROM HumanResources.Shift as hs

-- exercise 11: return all territories of sales (Name, Group) of table Sales.SalesTerritory
SELECT ssa.Name as 'Nome do territorio', ssa.[Group] as 'Nome do grupo territorial'
FROM Sales.SalesTerritory as ssa

-- exercise 12: return all provider a contain word "bike"
SELECT *
FROM Production.Product as ppro
WHERE ppro.Name LIKE '%Bike%'

-- exercise 13: return products with value weight is bigger 500
SELECT *
FROM Production.Product as ppro
WHERE ppro.Weight > 500

-- exercise 14: return products a started sales in year 2012
SELECT *
FROM Production.Product as ppro
WHERE YEAR(ppro.SellStartDate) = 2012

-- exercise 15: return methods of send in table Purchasing.ShipMethod
SELECT psh.Name as 'Nome metodo'
FROM Purchasing.ShipMethod as psh

-- exercise 16: return types address in column (Name) Person.AddressType
SELECT pad.[Name] as 'Tipos de endereco'
FROM Person.AddressType as pad 

-- exercise 17: return employee if start middle name a letter "s"
SELECT *
FROM Person.Person as ppe
WHERE ppe.MiddleName LIKE 'S%'

-- exercise 18: return order sales of Freight is bigger 100
SELECT *
FROM Sales.SalesOrderHeader as ssoh
WHERE ssoh.Freight > 100

-- exercise 19: return products in "DaysToManufacture" is equal a 0
SELECT *
FROM Production.Product as ppro
WHERE ppro.DaysToManufacture = 0

-- exercise 20: return products in order decrescent in based a value of column "ListPrice" 
SELECT *
FROM Production.Product as ppro
ORDER BY ppro.ListPrice DESC

-- exercise 21: return a first ten values order based in column "TotalDue" and value is bigger
SELECT TOP 10 *
FROM Sales.SalesOrderHeader as ssoh 
ORDER BY ssoh.TotalDue DESC

-- exercise 22: return all coins (Name, CurrencyCode) in table "Sales.Currency"
SELECT sc.[Name] as 'Nome moeda', sc.CurrencyCode as 'Codigo moeda'
FROM Sales.Currency as sc
ORDER BY sc.[Name] ASC -- Ordering name based in name coin 

-- exercise 23: return cities distinct in table "Person.Address"
SELECT DISTINCT (pad.City)
FROM Person.Address as pad
ORDER BY pad.City ASC -- Ordering names of cities in order ascendent 

-- exercise 24: return names and middlenames in uppercase of table "Person.Person"
SELECT UPPER (ppe.FirstName) as 'Primeiro Nome', UPPER (ppe.MiddleName) as 'Nome meio' -- Using clausule "UPPER (table + column)"
FROM Person.Person as ppe

-- exercise 25: return products a name contain word "Mountain"
SELECT *
FROM Production.Product as ppro
WHERE ppro.Name LIKE '%Mountain%'

-- exercise 26: return five products a bigger value in column (ListPrice)
SELECT TOP 5 *
FROM Production.Product as ppro
ORDER BY ppro.ListPrice DESC

-- exercise 27: return products of column "ListPrice" a value between 500 and 1000
SELECT *
FROM Production.Product as ppro
WHERE ppro.ListPrice BETWEEN 500 and 1000

-- exercise 28: return products in column "ProductNumber" started "FR"
SELECT *
FROM Production.Product as ppro
WHERE ppro.ProductNumber LIKE 'FR%'
