CREATE DATABASE IF NOT EXISTS shop_management;
USE shop_management;

DROP TABLE IF EXISTS ORDERS;

CREATE TABLE ORDERS (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerName VARCHAR(100),
    OrderDate DATETIME,
    TotalAmount DECIMAL(18, 2),
    Status VARCHAR(20), 
    IsDeleted TINYINT(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO ORDERS (CustomerName, OrderDate, TotalAmount, Status) VALUES
('Nguyễn Văn A', '2023-01-10', 500000, 'Completed'),
('Khách hàng vãng lai', '2023-02-15', 1200000, 'Canceled'),
('Trần Thị B', '2023-05-20', 300000, 'Canceled'),
('Lê Văn C', '2024-01-05', 850000, 'Completed');

DROP TABLE IF EXISTS ORDERS_ARCHIVE;

CREATE TABLE ORDERS_ARCHIVE LIKE ORDERS;

INSERT INTO ORDERS_ARCHIVE
SELECT *
FROM ORDERS
WHERE Status = 'Canceled'
  AND OrderDate < DATE_SUB('2026-04-01', INTERVAL 6 MONTH);

DELETE FROM ORDERS
WHERE Status = 'Canceled'
AND OrderDate < DATE_SUB('2026-04-01', INTERVAL 6 MONTH);

CREATE INDEX idx_orders_status_date 
ON ORDERS(Status, OrderDate);

SELECT * FROM ORDERS 
WHERE Status = 'Completed' AND IsDeleted = 0;