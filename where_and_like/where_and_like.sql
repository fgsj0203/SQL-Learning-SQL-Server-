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
