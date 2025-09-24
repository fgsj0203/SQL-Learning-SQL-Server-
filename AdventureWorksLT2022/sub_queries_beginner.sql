/*
Author: Francisco Gomes da Silva Junior
College: Estacio de Sa
Course: Computer Science
Period: 1
Date: 15/09/2025 - in format Brazil
Description: file with exercises beginner of subqueries
Database: AdventureWorksLT2022
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
    COLUMN_NAME = 'BillToAddressID'

-----------------------------------------------------------

-- exercise 01: return all products a value is bigger of average value of products
SELECT *
FROM SalesLT.[Product] as sp  
WHERE sp.ListPrice > 
                    (SELECT AVG(sp.ListPrice)
                    FROM SalesLT.[Product] as sp)


-- exercise 02: return all orders is bigger value of average value of column (totaldue)
SELECT *
FROM SalesLT.SalesOrderHeader as ssoh
WHERE ssoh.TotalDue > 
                    (select AVG(ssoh.TotalDue)
                    FROM SalesLT.SalesOrderHeader as ssoh)

-- exercise 03: return all products with value is bigger of product with bigger value and color is red
SELECT *
FROM SalesLT.[Product] as sp
WHERE sp.ListPrice > 
                    (SELECT TOP 1 sp.ListPrice
                    FROM SalesLT.[Product] as sp
                    WHERE sp.Color = 'Red')

