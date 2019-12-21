****************** MYSQL **************************

mysqldump -u root -p lesson > mysql_dump.sql // дамап БД
mysqldump -u root -p lesson -d > mysql_dump.sql // дамап БД только структура

CREATE TABLE cities (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL UNIQUE,
  regions_id INTEGER NOT NULL,
  FOREIGN KEY (regions_id) REFERENCES reions(id)
)

SELECT COUNT(*) AS count, date, SUM(amount) AS total FROM test GROUP BY date_format(date, "Y-m-%d%");

SELECT *, DATE_FORMAT(date, '%d.%m.%Y') AS new_date FROM test;

SELECT * FROM contacts WHERE contact_id BETWEEN 100 AND 200;




****************** POSTGRESQL **************************

CREATE TABLE cities (
  id SERIAL PRIMARY KEY, // SERIAL как auto_increment s mysql
  name VARCHAR(255) NOT NULL UNIQUE,
  regions_id INTEGER NOT NULL,
  FOREIGN KEY (regions_id) REFERENCES reions(id)
)
