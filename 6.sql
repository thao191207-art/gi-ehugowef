SELECT
    customer_id,
    AVG(amount) AS SoTienTrungBinh
FROM
    payment
GROUP BY
    customer_id
ORDER BY
    SoTienTrungBinh DESC;