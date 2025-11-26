SELECT
    first_name,
    last_name,
    CONCAT(
        LEFT(last_name, 3),  -- Lấy 3 ký tự đầu của Họ
        ' ',                 -- Thêm khoảng trắng
        UPPER(first_name)    -- Viết hoa Tên
    ) AS TenDayDuDinhDang
FROM
    actor;