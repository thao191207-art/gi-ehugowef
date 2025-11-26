SELECT
    YEAR(payment_date) AS NamThanhToan,
    SUM(amount) AS TongSoTien
FROM
    payment
GROUP BY
    NamThanhToan
ORDER BY
    NamThanhToan;