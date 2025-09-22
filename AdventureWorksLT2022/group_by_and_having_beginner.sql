/*
Author: Francisco Gomes da Silva Junior
College: Estacio de Sa
Course: Computer Science
Period: 1
Date: 16/09/2025 - in format Brazil
Description: file with exercises beginner of GROUP BY and HAVING
Database: AdventureWorksLT2022
*/

-- exercise 01
SELECT COUNT(sp.[Name]) as 'Nome do produto', sp.Color as 'Cor produto'
FROM SalesLT.[Product] as sp
GROUP BY sp.Color
