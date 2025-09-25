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
