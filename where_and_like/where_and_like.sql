/*
Author: Francisco Gomes da Silva Junior
College: Estacio de Sa
Course: Computer Science
Period: 1
Date: 12/09/2025 - in format Brazil
Description: file with exercises beginner with clausules "WHERE and LIKE"
Database: AdventureWorks2022
*/

-- exercise 01: return all job title a start word "Manager"
SELECT *
FROM HumanResources.Employee as he
WHERE he.JobTitle LIKE '%Manager'

-- exercise 02: return products with "SafetyStockLevel" is value smaller 500
SELECT *
FROM Production.Product as ppro
WHERE ppro.SafetyStockLevel < 500

-- exercise 03: return all territories is have group "North America"
SELECT *
FROM Sales.SalesTerritory as ssa
WHERE ssa.[Group] = 'North America'

-- exercise 04: return products with value "makeFlag" = 1
SELECT *
FROM Production.Product as ppro
WHERE ppro.MakeFlag = 1

-- exercise 05: return all products is value in ReorderPoint is equal or bigger 750
SELECT *
FROM Production.Product as ppro
WHERE ppro.ReorderPoint >= 750

-- exercise 06: return all address of city contain word "Fort"
SELECT *
FROM Person.[Address] as pad
WHERE pad.City LIKE '%Fort%'

-- exercise 07: return products with value in column "StandardCost" is smaller 10
SELECT *
FROM Production.Product as ppro
WHERE ppro.StandardCost < 10

-- exercise 08: return orders a value in column "OrderDate" is month december
SELECT *
FROM Sales.SalesOrderHeader as ssa
WHERE MONTH(ssa.OrderDate) = 12

-- exercise 09: return all products of weight column is not null
SELECT *
FROM Production.Product as ppro
WHERE ppro.WeightUnitMeasureCode IS NOT NULL
