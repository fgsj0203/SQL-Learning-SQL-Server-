/*
Author: Francisco Gomes da Silva Junior
College: Estacio de Sa
Course: Computer Science
Period: 1
Date: 25/09/2025 - in format Brazil
Description: file with exercises beginner of function text and manipulation date
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


-- exercise 01: return fullname 
SELECT sc.FirstName + ' ' + sc.LastName as 'Nome completo'
FROM SalesLT.Customer as sc

-- exercise 02: return name of clients in upper case
SELECT UPPER(sc.FirstName) + ' ' + UPPER(sc.LastName) as 'Nome completo - maiusculo' 
FROM SalesLT.Customer as sc

-- exercise 03: return name of clients in lower case
SELECT LOWER(sc.FirstName) + ' ' + LOWER(sc.LastName) as 'Nome completo - minusculo'
FROM SalesLT.Customer as sc

-- exercise 04: return a first 10 characters of name products
SELECT LEFT(sp.[Name],10) as 'Primeiros 10 caracteres do produto'
FROM SalesLT.[Product] as sp

-- exercise 05: return size name of products
SELECT sp.[Name] as 'Nome do produto', LEN(sp.[Name]) as 'Tamanho do nome dos produtos'
FROM SalesLT.[Product] as sp

-- exercise 06: return clients if name of company is bigger (20 characters)
SELECT sc.CustomerID as 'ID do cliente', sc.FirstName + ' ' + sc.LastName as 'Nome cliente', sc.CompanyName as 'Nome da empresa'
FROM SalesLT.Customer as sc
WHERE LEN(sc.CompanyName) > 20

-- exercise 07: return product if name finalized in "Bike"
SELECT *
FROM SalesLT.[Product] as sp
WHERE sp.[Name] LIKE '%Bike'

-- exercise 08: return products of name finalized in "Road"
SELECT *
FROM SalesLT.[Product] as sp
WHERE sp.[Name] LIKE '%Road'

-- exercise 09: return products of release from 2014
SELECT *
FROM SalesLT.[Product] as sp
WHERE YEAR(sp.ModifiedDate) >= 2014
