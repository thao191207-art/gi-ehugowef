CREATE TABLE don_hang (
    id_don_hang INT PRIMARY KEY,
    id_khach_hang INT,
    danh_muc VARCHAR(100),
    tong_tien INT,
    ngay_dat DATE,
    trang_thai VARCHAR(50)
);

INSERT INTO don_hang (id_don_hang, id_khach_hang, danh_muc, tong_tien, ngay_dat, trang_thai) VALUES
(1, 101, 'Dien tu', 15000000, '2023-01-15', 'Hoan thanh'),
(2, 102, 'Thoi trang', 2500000, '2023-01-20', 'Hoan thanh'),
(3, 101, 'Dien tu', 8000000, '2023-02-10', 'Hoan thanh'),
(4, 103, 'Gia dung', 5000000, '2023-02-12', 'Da huy'),
(5, 102, 'Thoi trang', 3000000, '2023-03-05', 'Hoan thanh'),
(6, 101, 'Gia dung', 4500000, '2023-03-08', 'Hoan thanh'),
(7, 104, 'Dien tu', 22000000, '2023-04-18', 'Hoan thanh'),
(8, 103, 'Thoi trang', 1800000, '2023-04-22', 'Hoan thanh'),
(9, 102, 'Dien tu', 12000000, '2022-12-10', 'Hoan thanh');
