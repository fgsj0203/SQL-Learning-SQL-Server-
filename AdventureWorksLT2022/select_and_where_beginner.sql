/*
Author: Francisco Gomes da Silva Junior
College: Estacio de Sa
Course: Computer Science
Period: 1
Date: 15/09/2025 - in format Brazil
Description: file with exercises beginner of clausule "SELECT and WHERE"
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
    COLUMN_NAME = 'Amount'
-------------------------------------------------

-- exercise 01: return name of product and ID Product
SELECT sp.Name as 'Nome produto', sp.ProductID as 'ID Produto'
FROM SalesLT.Product as sp
