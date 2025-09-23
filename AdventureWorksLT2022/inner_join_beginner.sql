/*
Author: Francisco Gomes da Silva Junior
College: Estacio de Sa
Course: Computer Science
Period: 1
Date: 16/09/2025 - in format Brazil
Description: file with exercises beginner of INNER JOIN beginner
Database: AdventureWorksLT2022
*/

-- exercise 01:return name products and name of subcategory 
SELECT sp.[Name] as 'Nome produto', spc.[Name] as 'Nome Categoria'
FROM SalesLT.[Product] as sp INNER JOIN SalesLT.ProductCategory as spc ON sp.ProductCategoryID = spc.ProductCategoryID
