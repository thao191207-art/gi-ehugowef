SELECT active, COUNT(*) AS SoLuong
FROM customer
GROUP BY active;

SELECT 
    CASE 
        WHEN active = 1 THEN 'Đang hoạt động'
        ELSE 'Không hoạt động'
    END AS TrangThai,
    COUNT(*) AS SoLuong
FROM customer
GROUP BY active;