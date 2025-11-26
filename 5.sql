SELECT
    MIN(rental_date) AS NgayThueDauTien,
    MAX(rental_date) AS NgayThueGanNhat
FROM
    rental;