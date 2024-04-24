INSERT INTO products (title, price, is_necessary)
VALUES ('จอยสติ๊ก Wireless', 1500, 0);

INSERT INTO products (title, price, is_necessary)
VALUES ('กล้วย', 20, 1), ('เผือก', 25, 1), ('หมูปิ้ง', 30, 0);

UPDATE products
SET title = 'สเต๊กแซลม่อน', price = 120
WHERE id = 7;

UPDATE products
SET is_necessary = 0
WHERE price >= 10000;

DELETE FROM products
WHERE id = 6;

DELETE FROM products
WHERE price < 1000;

DELETE FROM products
WHERE created_at < '2024-04-24 00:00:00';
