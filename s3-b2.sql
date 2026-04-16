-- PHÂN TÍCH
-- Lỗi 1: Sai cú pháp (Syntax Error)
-- Đoạn code: INSERT INTO SHIPPERS (ShipperName, Phone) VALUES ('Giao Hang Nhanh, '0901234567');
-- Vấn đề: Thiếu dấu ' đóng sau "Giao Hang Nhanh", SQL hiểu chuỗi bị “vỡ cấu trúc” → báo Syntax Error
-- Lỗi 2: Thiếu dữ liệu nhưng không chỉ rõ cột
-- Đoạn code: INSERT INTO SHIPPERS VALUES ('Viettel Post');
-- Vấn đề: Bảng có 3 cột: ShipperID, ShipperName, Phone nhưng chỉ truyền 1 giá trị

CREATE TABLE SHIPPERS (
    ShipperID INT PRIMARY KEY IDENTITY(1,1),
    ShipperName VARCHAR(255) NOT NULL,
    Phone VARCHAR(20)
);

INSERT INTO SHIPPERS (ShipperName, Phone)
VALUES ('Giao Hang Nhanh', '0901234567');

INSERT INTO SHIPPERS (ShipperName, Phone)
VALUES ('Viettel Post', '0987654321');

SELECT * FROM SHIPPERS;