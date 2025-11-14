-- 1. Lấy danh sách tất cả các tác giả có quốc tịch "Việt Nam"
SELECT *
FROM TacGia
WHERE QuocTich = 'Việt Nam';


-- 2. Lấy danh sách các độc giả có địa chỉ ở "Hà Nội"
SELECT *
FROM DocGia
WHERE DiaChi LIKE '%Hà Nội%';


-- 3. Hiển thị TenDocGia và SoDienThoai của tất cả độc giả
SELECT TenDocGia, SoDienThoai
FROM DocGia;
