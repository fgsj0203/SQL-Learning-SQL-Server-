/*
Author: Francisco Gomes da Silva Junior
College: Estacio de Sa
Course: Computer Science
Period: 1
Date: 16/09/2025 - in format Brazil
Description: file with exercises beginner of agregation function (COUNT, AVG, MAX, MIN, SUM)
Database: AdventureWorksLT2022
*/

-- exercise 01: return a amount products in table
SELECT COUNT (sp.ProductID) as 'Total produtos'
FROM SalesLT.[Product] as sp
