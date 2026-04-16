CREATE database store_management;
USE store_management;

CREATE TABLE products(
	productId char(5) primary key,
    productName varchar(200) not null,
    size char(5) not null,
    price decimal(10,2) check(price >= 0)
);

INSERT INTO products VALUES
('P01', 'Áo sơ mi trắng', 'L', 250000),
('P02', 'Quần Jean xanh', 'M', 450000),
('P03', 'Áo thun Basic', 'XL', 150000),
('P04', 'Áo hoodie', NULL, 200000);

UPDATE products SET price = 400000 WHERE productId = 'P02';
UPDATE products SET price = price * 1.1;
DELETE FROM products WHERE productId = 'P03';

-- truy vấn dữ liệu
SELECT * FROM products;
SELECT productName, size FROM products;
SELECT * FROM products WHERE price > 300000;