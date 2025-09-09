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
