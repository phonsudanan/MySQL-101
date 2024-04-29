SELECT p.id, p.title, c.title AS categories
FROM products AS p
LEFT JOIN categories AS c
ON p.category_id = c.id
ORDER BY categories ASC;

SELECT c.id, c.title, COUNT(p.id) AS count
FROM categories AS c
LEFT JOIN products AS p
ON c.id = p.category_id
GROUP BY c.id;

SELECT p.id, p.title, GROUP_CONCAT(ph.title) AS hashtags
FROM products AS p
LEFT JOIN (
	SELECT h1.title, ph1.product_id
    FROM products_hashtags AS ph1
    LEFT JOIN hashtags AS h1
    ON ph1.hashtag_id = h1.id
) AS ph
ON p.id = ph.product_id
GROUP BY p.id;

SELECT h.id, h.title, COUNT(ph.product_id)
FROM hashtags AS h
LEFT JOIN products_hashtags AS ph
ON h.id = ph.hashtag_id
GROUP BY h.id;