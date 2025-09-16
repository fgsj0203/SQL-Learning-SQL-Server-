/*
Author: Francisco Gomes da Silva Junior
College: Estacio de Sa
Course: Computer Science
Period: 1
Date: 15/09/2025 - in format Brazil
Description: file with exercises beginner with clausules "Inner Join"
Database: AdventureWorks2022
*/

-- Script for search column directly in tables
SELECT
    TABLE_NAME,
    COLUMN_NAME,
    DATA_TYPE,
    CHARACTER_MAXIMUM_LENGTH
FROM
    INFORMATION_SCHEMA.COLUMNS
WHERE
    COLUMN_NAME = 'ProductSubCategoryID'
-------------------------------------------------


-- exercise 01: return first name and middle name with number account
SELECT ppe.FirstName + ' ' + ppe.MiddleName as 'Nome completo', sc.AccountNumber as 'Numero da conta'
FROM Person.Person as ppe INNER JOIN Sales.Customer as sc ON ppe.BusinessEntityID = sc.PersonID

-- exercise 02: return name of product and name of subcategory
SELECT ppro.Name as 'Nome do produto', pprod.Name as 'Nome categoria'
FROM Production.Product as ppro INNER JOIN Production.ProductSubcategory as pprod ON ppro.ProductSubcategoryID = pprod.ProductSubcategoryID
