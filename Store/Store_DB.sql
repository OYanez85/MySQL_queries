-- 1. List the names of all products in the product table
SELECT nombre FROM producto;

-- 2. List the names and prices of all products in the product table
SELECT nombre, precio FROM producto;

-- 3. List all columns in the product table
SELECT * FROM producto;

-- 4. List the product names, prices in euros, and prices in U.S. dollars (USD)
SELECT nombre, precio AS euros, precio * 1.1 AS usd FROM producto;

-- 5. Product names, prices in euros, and USD with aliases for columns
SELECT nombre AS "Product Name", precio AS euros, precio * 1.1 AS dollars FROM producto;

-- 6. Names and prices of all products, converting names to uppercase
SELECT UPPER(nombre), precio FROM producto;

-- 7. Names and prices of all products, converting names to lowercase
SELECT LOWER(nombre), precio FROM producto;

-- 8. All manufacturer names and the first two uppercase letters of each name
SELECT nombre, UPPER(SUBSTRING(nombre, 1, 2)) AS initials FROM fabricante;

-- 9. Names and prices of products, rounding the price value
SELECT nombre, ROUND(precio) AS precio FROM producto;

-- 10. Names and prices of products, truncating the price value
SELECT nombre, TRUNCATE(precio, 0) AS precio FROM producto;

-- 11. Codes of manufacturers with products in the product table
SELECT DISTINCT codigo_fabricante FROM producto;

-- 12. Unique codes of manufacturers with products in the product table
SELECT DISTINCT codigo_fabricante FROM producto;

-- 13. Manufacturer names in ascending order
SELECT nombre FROM fabricante ORDER BY nombre ASC;

-- 14. Manufacturer names in descending order
SELECT nombre FROM fabricante ORDER BY nombre DESC;

-- 15. Product names sorted by name ascending and price descending
SELECT nombre, precio FROM producto ORDER BY nombre ASC, precio DESC;

-- 16. First 5 rows of manufacturer table
SELECT * FROM fabricante LIMIT 5;

-- 17. 2 rows starting from the fourth row in manufacturer table
SELECT * FROM fabricante LIMIT 2 OFFSET 3;

-- 18. Name and price of the cheapest product
SELECT nombre, precio FROM producto ORDER BY precio ASC LIMIT 1;

-- 19. Name and price of the most expensive product
SELECT nombre, precio FROM producto ORDER BY precio DESC LIMIT 1;

-- 20. Names of all products whose manufacturer code is 2
SELECT nombre FROM producto WHERE codigo_fabricante = 2;

-- 21. Product name, price, and manufacturer name for all products
SELECT p.nombre AS ProductName, p.precio, f.nombre AS ManufacturerName FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo;

-- 22. Product name, price, and manufacturer name ordered by manufacturer name
SELECT p.nombre AS ProductName, p.precio, f.nombre AS ManufacturerName FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo ORDER BY f.nombre;

-- 23. Product code, product name, manufacturer code, and manufacturer name
SELECT p.codigo AS ProductCode, p.nombre AS ProductName, f.codigo AS ManufacturerCode, f.nombre AS ManufacturerName FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo;

-- 24. Product name, price, and manufacturer name of the cheapest product
SELECT p.nombre, p.precio, f.nombre AS ManufacturerName FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo ORDER BY p.precio ASC LIMIT 1;

-- 25. Product name, price, and manufacturer name of the most expensive product
SELECT p.nombre, p.precio, f.nombre AS ManufacturerName FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo ORDER BY p.precio DESC LIMIT 1;

-- 26. All products from the manufacturer Lenovo
SELECT nombre FROM producto WHERE codigo_fabricante = (SELECT codigo FROM fabricante WHERE nombre = 'Lenovo');

-- 27. All products from manufacturer Crucial that cost more than €200
SELECT nombre, precio FROM producto WHERE codigo_fabricante = (SELECT codigo FROM fabricante WHERE nombre = 'Crucial') AND precio > 200;

-- 28. Products from manufacturers Asus, Hewlett-Packard, and Seagate (without IN)
SELECT nombre, precio FROM producto JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo WHERE fabricante.nombre = 'Asus' OR fabricante.nombre = 'Hewlett-Packard' OR fabricante.nombre = 'Seagate';

-- 29. Products from manufacturers Asus, Hewlett-Packard, and Seagate (with IN)
SELECT nombre, precio FROM producto JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo WHERE fabricante.nombre IN ('Asus', 'Hewlett-Packard', 'Seagate');

-- 30. Products from manufacturers whose names end with the vowel 'e'
SELECT nombre, precio FROM producto JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo WHERE fabricante.nombre LIKE '%e';

-- 31. Products from manufacturers whose names contain the character 'w'
SELECT nombre, precio FROM producto JOIN fabricante ON producto.codigo_fabricante = fabricante.codigo WHERE fabricante.nombre LIKE '%w%';

-- 32. Product name, price, and manufacturer name for products priced at €180 or more
SELECT p.nombre, p.precio, f.nombre AS ManufacturerName FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE p.precio >= 180 ORDER BY p.precio DESC, p.nombre ASC;

-- 33. Manufacturer codes and names with products in the database
SELECT DISTINCT f.codigo, f.nombre FROM fabricante f JOIN producto p ON f.codigo = p.codigo_fabricante;

-- 34. All manufacturers with products each has, including those with no associated products
SELECT f.nombre AS ManufacturerName, p.nombre AS ProductName FROM fabricante f LEFT JOIN producto p ON f.codigo = p.codigo_fabricante;

-- 35. Manufacturers with no associated products
SELECT nombre FROM fabricante WHERE codigo NOT IN (SELECT codigo_fabricante FROM producto);

-- 36. All products from Lenovo without using INNER JOIN
SELECT * FROM producto WHERE codigo_fabricante = (SELECT codigo FROM fabricante WHERE nombre = 'Lenovo');

-- 37. Data for products with the same price as the most expensive Lenovo product without INNER JOIN
SELECT * FROM producto WHERE precio = (SELECT MAX(precio) FROM producto WHERE codigo_fabricante = (SELECT codigo FROM fabricante WHERE nombre = 'Lenovo'));

-- 38. Most expensive Lenovo product
SELECT nombre FROM producto WHERE precio = (SELECT MAX(precio) FROM producto WHERE codigo_fabricante = (SELECT codigo FROM fabricante WHERE nombre = 'Lenovo'));

-- 39. Cheapest Hewlett-Packard product
SELECT nombre FROM producto WHERE precio = (SELECT MIN(precio) FROM producto WHERE codigo_fabricante = (SELECT codigo FROM fabricante WHERE nombre = 'Hewlett-Packard'));

-- 40. Products with price equal to or greater than the most expensive Lenovo product
SELECT * FROM producto WHERE precio >= (SELECT MAX(precio) FROM producto WHERE codigo_fabricante = (SELECT codigo FROM fabricante WHERE nombre = 'Lenovo'));

-- 41. Products from Asus priced higher than the average of all their products
SELECT * FROM producto WHERE codigo_fabricante = (SELECT codigo FROM fabricante WHERE nombre = 'Asus') AND precio > (SELECT AVG(precio) FROM producto WHERE codigo_fabricante = (SELECT codigo FROM fabricante WHERE nombre = 'Asus'));
