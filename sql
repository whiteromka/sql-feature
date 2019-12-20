SELECT COUNT(*) AS count, date, SUM(amount) AS total FROM test GROUP BY date_format(date, "Y-m-%d%");

SELECT *, DATE_FORMAT(date, '%d.%m.%Y') AS new_date FROM test;

SELECT * FROM contacts WHERE contact_id BETWEEN 100 AND 200;
