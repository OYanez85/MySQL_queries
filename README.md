# MySQL_queries
Assignment_S2.02

# University and Store Project

This project contains SQL schemas and queries for two main databases: **University** and **Store**. Each database has a distinct set of tables, data, and example queries aimed at illustrating database management, SQL commands, and relational database concepts.

## Project Structure

The project is organized into two main directories:
1. **Store**
2. **University**

Each directory contains SQL files for setting up the respective databases and running sample queries.

---

## 1. Store

### Description
The **Store** database represents a simplified retail store system. It includes tables for managing products, manufacturers, and other essential store-related entities. This database schema demonstrates common SQL operations for managing inventory and basic retail data.

### Files
- **Store_DB.sql**: Contains the schema for the Store database, defining tables such as `product` and `manufacturer`, along with relationships and sample data.
- **schema_tienda.sql**: This file includes additional details and possibly modifications or alternative schema definitions for the Store database.

### Database Structure
- **Tables**:
  - `product` (fields: `code`, `name`, `price`, `manufacturer_code`)
  - `manufacturer` (fields: `code`, `name`)
- The `manufacturer_code` field in the `product` table is a foreign key that relates to the `code` field in the `manufacturer` table.

### Example Queries
1. List the names of all products in the product table.
2. List the names and prices of all products in the product table.
3. List all columns in the product table.
4. List the product names, prices in euros, and prices in U.S. dollars (USD).
5. List the product names, prices in euros, and prices in U.S. dollars (USD) with aliases for the columns: product name, euros, dollars.
6. List the names and prices of all products in the product table, converting names to uppercase.
7. List the names and prices of all products in the product table, converting names to lowercase.
8. List all manufacturer names in one column, and in another column, display the first two uppercase letters of each manufacturer's name.
9. List the names and prices of all products in the product table, rounding the price value.
10. List the names and prices of all products in the product table, truncating the price to show no decimal places.
11. List the codes of manufacturers with products in the product table.
12. List the unique codes of manufacturers with products in the product table.
13. List the manufacturer names in ascending order.
14. List the manufacturer names in descending order.
15. List the product names, sorted first by name in ascending order, then by price in descending order.
16. Return a list of the first 5 rows of the manufacturer table.
17. Return a list of 2 rows, starting from the fourth row of the manufacturer table (including the fourth row).
18. List the name and price of the cheapest product using only the ORDER BY and LIMIT clauses (without using MIN(price) or GROUP BY).
19. List the name and price of the most expensive product using only the ORDER BY and LIMIT clauses (without using MAX(price) or GROUP BY).
20. List the names of all products whose manufacturer code is 2.
21. Return a list with the product name, price, and manufacturer name for all products in the database.
22. Return a list with the product name, price, and manufacturer name for all products in the database, ordered alphabetically by manufacturer name.
23. Return a list with the product code, product name, manufacturer code, and manufacturer name for all products in the database.
24. Return the product name, price, and manufacturer name of the cheapest product.
25. Return the product name, price, and manufacturer name of the most expensive product.
26. Return a list of all products from the manufacturer Lenovo.
27. Return a list of all products from the manufacturer Crucial that cost more than €200.
28. Return a list of all products from manufacturers Asus, Hewlett-Packard, and Seagate without using the IN operator.
29. Return a list of all products from manufacturers Asus, Hewlett-Packard, and Seagate using the IN operator.
30. Return a list with the name and price of all products from manufacturers whose names end with the vowel 'e'.
31. Return a list with the name and price of all products from manufacturers whose names contain the character 'w'.
32. Return a list with the product name, price, and manufacturer name for all products with a price of €180 or more, ordered by price (descending) and name (ascending).
33. Return a list of manufacturer codes and names for manufacturers with products in the database.
34. Return a list of all manufacturers in the database, along with the products each one has, including those with no associated products.
35. Return a list showing only manufacturers with no associated products.
36. Return all products from Lenovo without using INNER JOIN.
37. Return all data for products with the same price as the most expensive Lenovo product without using INNER JOIN.
38. List the most expensive Lenovo product.
39. List the cheapest Hewlett-Packard product.
40. Return all database products with a price equal to or greater than the most expensive Lenovo product.
41. List all products from Asus that are priced higher than the average price of all their products.

---

## 2. University

### Description
The **University** database models a basic university system. It includes tables for students, professors, courses, and departments. This schema is designed to explore relationships between students and courses, professors and departments, and to demonstrate various SQL queries for managing academic data.

### Files
- **University_Queries.sql**: Contains SQL queries that demonstrate how to interact with the University database. These queries cover tasks such as listing students by birth year, retrieving professors by department, and joining multiple tables.
- **schema_universidad.sql**: Defines the schema for the University database, including tables like `student`, `professor`, `department`, and `course`.

### Example Queries
1. Return a list with the first surname, second surname, and first name of all students, sorted by first surname, second surname, and first name.
2. Find the first name and both surnames of students who haven't added their phone number in the database.
3. Return a list of students born in 1999.
4. Return a list of professors who haven't added their phone number in the database, and whose NIF ends in 'K'.
5. Return a list of subjects offered in the first semester of the third year of the degree program identified by ID 7.
6. Return a list of professors along with the name of their associated department, ordered by surnames and first name, with columns: first surname, second surname, first name, and department name.
7. Return a list of subjects, start year, and end year of the academic year for the student with NIF 26902806M.
8. Return a list of all department names with professors teaching courses in the Computer Engineering degree (2015 Curriculum).
9. Return a list of all students enrolled in any subject during the 2018/2019 academic year.

### Join Operations
10. Return a list of all professors and their linked departments, including those not associated with any department.
11. List professors not associated with any department.
12. List departments without any associated professors.
13. List professors not teaching any subject.
14. List subjects without an assigned professor.
15. List all departments that haven't offered subjects in any academic year.

### Summary Queries
16. Return the total number of students.
17. Calculate the number of students born in 1999.
18. Calculate the number of professors in each department, ordered by professor count in descending order.
19. List all departments and the number of professors in each, including those without professors.
20. List all degree programs and the number of subjects each includes, ordered by subject count in descending order.
21. List all degree programs with more than 40 associated subjects, showing the program name and subject count.
22. Show the program name, type of subject, and the total number of credits for each subject type.
23. Show how many students enrolled in a subject for each academic year.
24. Show the number of subjects taught by each professor, including those who teach no subjects, ordered by subject count in descending order.
25. Return all data of the youngest student.
26. List professors with an associated department who do not teach any subjects.

---

## Getting Started

### Requirements
- A MySQL or compatible SQL environment for running the .sql files.
- Basic knowledge of SQL commands and database structure.

### Setup Instructions
1. Clone or download this repository:
   ```bash
   git clone https://github.com/OYanez85/MySQL_queries.git
Organize Files: If you haven't already organized files into folders:
Create directories:

cd MySQL_queries
mkdir -p Store
mkdir -p University
Move store-related files:

mv Store_DB.sql schema_tienda.sql Store/
Move university-related files:

mv University_Queries.sql schema_universidad.sql University/
Stage and commit the changes:

git add .
git commit -m "Organize files into Store and University folders"
Push the changes to GitHub:

git push origin main
Import SQL Files:
Load Store/Store_DB.sql and Store/schema_tienda.sql to set up the Store database.
Load University/schema_universidad.sql and run the queries in University/University_Queries.sql to interact with the University database.
