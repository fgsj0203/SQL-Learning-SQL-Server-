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
