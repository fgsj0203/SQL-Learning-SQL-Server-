/*
Author: Francisco Gomes da Silva Junior
College: Estacio de Sa
Course: Computer Science
Period: 1
Date: 16/09/2025 - in format Brazil
Description: file with exercises beginner of GROUP BY and HAVING
Database: AdventureWorksLT2022
*/

-- exercise 01: return products grouped by color
SELECT sp.Color as 'Cor do produto', COUNT(sp.ProductID) as 'Qtd produto por cor'
FROM SalesLT.[Product] as sp
GROUP BY sp.Color

-- exercise 02: return products grouped by ProductCategoryID and amount 
SELECT sp.ProductCategoryID as 'ID categoria/Produto', COUNT(sp.ProductID) as 'Qtd produto por categoria'
FROM SalesLT.[Product] as sp
GROUP BY sp.ProductCategoryID