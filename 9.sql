CREATE VIEW customer_payment_view AS
SELECT
    customer_id,
    SUM(amount) AS TongThanhToan,
    CASE
        WHEN SUM(amount) < 50 THEN 'Ít'
        WHEN SUM(amount) BETWEEN 50 AND 100 THEN 'Trung bình'
        WHEN SUM(amount) > 100 THEN 'Nhiều'
        ELSE 'Không xác định'
    END AS PhanLoai
FROM
    payment
GROUP BY
    customer_id;
    SELECT
    customer_id,
    TongThanhToan,
    PhanLoai
FROM
    customer_payment_view
ORDER BY
    TongThanhToan DESC;