/*
Author: Francisco Gomes da Silva Junior
College: Estacio de Sa
Course: Computer Science
Period: 1
Date: 12/09/2025 - in format Brazil
Description: file with exercises beginner a use expression for manipulation data
Database: AdventureWorks2022
*/

-- exercise 01: return names and price list round for number integer
SELECT ppro.Name as 'Nome do produto', ROUND (ppro.ListPrice, 0) as 'Valor arredondado'
FROM Production.Product as ppro
-- WHERE ppro.ListPrice != 0 (if return all values different of zero)

-- exercise 02: return name and last name concatenate in new column called FullName
SELECT ppe.FirstName + ' ' + ppe.LastName as 'Nome Completo'
FROM Person.Person as ppe

-- exercise 03: return products of price is bigger value average
SELECT *
FROM Production.Product as ppro
WHERE ppro.ListPrice > 
(SELECT AVG(ppro.ListPrice) FROM Production.Product as ppro)
ORDER BY ppro.ListPrice DESC -- Values in order decrescent
