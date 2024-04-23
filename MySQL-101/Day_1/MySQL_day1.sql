SELECT *
FROM products;

SELECT title, price
FROM products;

SELECT *
FROM products
WHERE is_necessary = 1;

SELECT *
FROM products
WHERE price > 10000;

SELECT *
FROM products
WHERE price >= 3000 AND price <= 12000;

SELECT *
FROM products
WHERE is_necessary = 1 OR price <= 5000;

SELECT *
FROM products
WHERE title LIKE '%รถ%';

SELECT *
FROM products
ORDER BY title ASC;

SELECT *
FROM products
ORDER BY created_at DESC;

SELECT *
FROM products
ORDER BY created_at DESC
LIMIT 2;

SELECT *
FROM products
ORDER BY created_at DESC
LIMIT 2 OFFSET 1;