CREATE database procduct;
use product;
-- Phân tích 
-- Trong SQL:
-- UPDATE không có WHERE ⇒ áp dụng cho TOÀN BỘ bảng
-- Không có bất kỳ điều kiện lọc nào

CREATE TABLE PRODUCTS (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Category VARCHAR(50),
    OriginalPrice DECIMAL(18,2) CHECK (OriginalPrice >= 0)
);

INSERT INTO PRODUCTS (ProductID, ProductName, Category, OriginalPrice)
VALUES
(1, 'iPhone 15', 'Electronics', 20000000),
(2, 'Samsung Refrigerator', 'Electronics', 15000000),
(3, 'Water Spinach', 'Food', 10000),
(4, 'Filtered Fresh Milk 4L', 'Food', 28000);

UPDATE PRODUCTS SET OriginalPrice = OriginalPrice * 0.9 WHERE Category = 'Electronics';
SELECT * FROM PRODUCTS;
SELECT ProductName, Category FROM PRODUCTS;
SELECT * FROM PRODUCTS
WHERE OriginalPrice > 300000;