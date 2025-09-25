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
