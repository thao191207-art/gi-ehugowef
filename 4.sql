SELECT
    title,
    description,
    LENGTH(description) AS DoDaiMoTa,
    CASE
        WHEN LENGTH(description) < 50 THEN 'Ngắn'
        WHEN LENGTH(description) BETWEEN 50 AND 100 THEN 'Trung bình'
        WHEN LENGTH(description) > 100 THEN 'Dài'
        ELSE 'Không có mô tả' -- Xử lý trường hợp mô tả rỗng (NULL) hoặc độ dài khác
    END AS PhanLoaiMoTa
FROM
    film;