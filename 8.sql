SELECT
    CASE
        -- Mùa Xuân: Tháng 1, 2, 3
        WHEN MONTH(payment_date) BETWEEN 1 AND 3 THEN 'Xuân'
        -- Mùa Hạ: Tháng 4, 5, 6
        WHEN MONTH(payment_date) BETWEEN 4 AND 6 THEN 'Hạ'
        -- Mùa Thu: Tháng 7, 8, 9
        WHEN MONTH(payment_date) BETWEEN 7 AND 9 THEN 'Thu'
        -- Mùa Đông: Tháng 10, 11, 12
        WHEN MONTH(payment_date) BETWEEN 10 AND 12 THEN 'Đông'
        ELSE 'Không xác định'
    END AS MuaGiaoDich,
    COUNT(*) AS SoLuongGiaoDich
FROM
    payment
GROUP BY
    MuaGiaoDich;