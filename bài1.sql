-- ===========================
--  TẠO BẢNG & CHÈN DỮ LIỆU
-- ===========================

CREATE TABLE nhan_vien (
    id INT PRIMARY KEY,
    ho_ten VARCHAR(100),
    phong_ban VARCHAR(50),
    luong INT,
    nam_sinh INT
);

INSERT INTO nhan_vien (id, ho_ten, phong_ban, luong, nam_sinh) VALUES
(1, 'Nguyễn Văn An', 'Kỹ thuật', 25000000, 1990),
(2, 'Trần Thị Bình', 'Kinh doanh', 18000000, 1992),
(3, 'Lê Văn Cường', 'Kỹ thuật', 30000000, 1988),
(4, 'Phạm Thị Dung', 'Nhân sự', 16000000, 1995),
(5, 'Hoàng Văn Giang', 'Kỹ thuật', 22000000, 1991),
(6, 'Vũ Thị Hà', 'Kinh doanh', 19000000, 1996),
(7, 'Nguyễn Minh Hùng', 'Kỹ thuật', 35000000, 1989),
(8, 'Đặng Thu Lan', 'Marketing', 21000000, 1994),
(9, 'Bùi Văn Kiên', 'Nhân sự', 17000000, 1997),
(10, 'Ngô Bảo Ngọc', 'Kinh doanh', 20000000, 1993);

-- ===========================
--   PHẦN 1 – LỌC DỮ LIỆU
-- ===========================

-- 1. Nhân viên họ "Nguyễn"
SELECT * FROM nhan_vien
WHERE ho_ten LIKE 'Nguyễn%';

-- 2. Lương từ 15–20 triệu
SELECT * FROM nhan_vien
WHERE luong BETWEEN 15000000 AND 20000000;

-- 3. Nhân viên phòng Kinh doanh hoặc Nhân sự
SELECT
