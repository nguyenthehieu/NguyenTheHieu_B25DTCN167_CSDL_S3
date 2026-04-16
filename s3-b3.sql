-- 1. Phân tích 
-- Input (Đầu vào): Bảng CUSTOMERS. Dữ liệu cần quét dựa trên các cột: City, LastPurchaseDate, Email, và Status.
-- Output (Đầu ra): Chỉ bao gồm 2 cột: FullName và Email.

SELECT FullName, Email FROM CUSTOMERS
WHERE 
    City = N'Hà Nội'                               -- Lọc theo khu vực
    AND LastPurchaseDate <= '2026-04-01'           -- Không mua hàng > 6 tháng
    AND Email IS NOT NULL                          -- Loại bỏ bẫy: Email trống
    AND Status = 'Active';                        -- Chỉ lấy những tài khoản đang hoạt động