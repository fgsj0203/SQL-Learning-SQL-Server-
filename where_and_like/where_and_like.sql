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
