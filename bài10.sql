-- 1. Hiệu suất giảng viên Q1/2023
SELECT 
    'Hieu suat giang vien Q1' AS phan_tich,
    ten_giang_vien AS doi_tuong,
    SUM(gia_tien) AS gia_tri
FROM ghi_danh
WHERE ngay_ghi_danh BETWEEN '2023-01-01' AND '2023-03-31'
GROUP BY ten_giang_vien
HAVING SUM(gia_tien) > 1000000

UNION ALL

-- 2. Khóa học phổ biến nhưng hoàn thành thấp
SELECT 
    'Khoa hoc pho bien ty le hoan thanh thap' AS phan_tich,
    ten_khoa_hoc AS doi_tuong,
    ROUND(SUM(CASE WHEN trang_thai_hoan_thanh = 'Da hoan thanh' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS gia_tri
FROM ghi_danh
GROUP BY ten_khoa_hoc
HAVING COUNT(*) >= 2
   AND (SUM(CASE WHEN trang_thai_hoan_thanh = 'Da hoan thanh' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) < 50

UNION ALL

-- 3. Học viên tích cực nhất
SELECT 
    'Hoc vien tich cuc' AS phan_tich,
    CONCAT('Hoc vien ', id_hoc_vien) AS doi_tuong,
    SUM(gia_tien) AS gia_tri
FROM ghi_danh
GROUP BY id_hoc_vien
HAVING COUNT(DISTINCT id_khoa_hoc) >= 2
   AND SUM(gia_tien) > 1000000

UNION ALL

-- 4. Doanh thu theo thang 2023
SELECT 
    'Doanh thu theo thang 2023' AS phan_tich,
    CONCAT('Thang ', MONTH(ngay_ghi_danh)) AS doi_tuong,
    SUM(gia_tien) AS gia_tri
FROM ghi_danh
WHERE YEAR(ngay_ghi_danh) = 2023
GROUP BY MONTH(ngay_ghi_danh)
HAVING SUM(gia_tien) > 1000000
ORDER BY phan_tich, doi_tuong;
