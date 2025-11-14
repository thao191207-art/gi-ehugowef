-- 1. Tạo cơ sở dữ liệu
CREATE DATABASE QuanLyThuVien;

-- 2. Sử dụng cơ sở dữ liệu
USE QuanLyThuVien;

-- 3. Tạo bảng tác giả
CREATE TABLE TacGia (
MaTacGia INT AUTO_INCREMENT PRIMARY KEY,
TenTacGia VARCHAR(100) NOT NULL,
QuocTich VARCHAR(50)
);

-- 4. Tạo bảng độc giả 
CREATE TABLE DocGia (
MaDocGia INT AUTO_INCREMENT PRIMARY KEY,
TenDocGia VARCHAR(100) NOT NULL,
DiaChi VARCHAR(255),
SoDienThoai VARCHAR(15)
);

-- 5. Chèn dữ liệu vào bảng tác giả
INSERT INTO TacGia (TenTacGia, QuocTich) VALUES
('Nguyễn Nhật Ánh','Việt Nam'),
('J.K. ROWLING','Anh'),
('Haruki Murakami','Nhật Bản'),
('Dane Canergie','Mỹ');

-- 6. Chèn dữ liệu vào bảng độc giả
INSERT INTO DocGia (TenDocGia, DiaChi, SoDienThoai) VALUES
('Nguyễn Văn A','Đường 123, Hà Nội','0901234567')

