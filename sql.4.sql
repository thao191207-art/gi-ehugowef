--------------------------------------------------------
-- 1. Cập nhật địa chỉ độc giả Trần Thị B (MaDocGia = 2)
--------------------------------------------------------
UPDATE DocGia
SET DiaChi = '200 Đường XYZ, TP. Thủ Đức'
WHERE MaDocGia = 2;


--------------------------------------------------------
-- 2. Xóa tác giả Haruki Murakami (MaTacGia = 3)
--------------------------------------------------------
DELETE FROM TacGia
WHERE MaTacGia = 3;
