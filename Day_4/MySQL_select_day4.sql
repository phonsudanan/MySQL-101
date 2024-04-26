SELECT title, is_necessary AS is_ncs
FROM products;

SELECT is_necessary, COUNT(id) AS products_count
FROM products
GROUP BY is_necessary;

SELECT is_necessary, SUM(price) AS products_price
FROM products
GROUP BY is_necessary;

SELECT is_necessary, GROUP_CONCAT(title SEPARATOR ' + ' ) AS roducts_title
FROM products
GROUP BY is_necessary;

SELECT p.id, p.title, pn.note
FROM products AS p
LEFT JOIN product_notes AS pn
ON p.id = pn.product_id
ORDER BY p.title ASC;