/*
Author: Francisco Gomes da Silva Junior
College: Estácio de Sá
Course: Computer Science
Period: 1º
Date: 09/09/2025 - in format Brazil
Description: file with exercises beginner with clausules "SELECT and ORDER BY"
Database: AdventureWorks2022
*/

-- exercise 01: return all names and middle names of Person.Person
SELECT ppe.FirstName as 'Primeiro Nome', ppe.MiddleName as 'Nome do meio'
FROM Person.Person as ppe