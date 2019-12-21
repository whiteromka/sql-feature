****************** MYSQL **************************

mysqldump -u root -p lesson > mysql_dump.sql // дамп БД
mysqldump -u root -p lesson -d > mysql_dump.sql // дамп БД только структура

CREATE TABLE cities (
  id INTEGER PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL UNIQUE,
  regions_id INTEGER NOT NULL,
  FOREIGN KEY (regions_id) REFERENCES reions(id)
)

SELECT COUNT(*) AS count, date, SUM(amount) AS total FROM test GROUP BY date_format(date, "Y-m-%d%");

SELECT *, DATE_FORMAT(date, '%d.%m.%Y') AS new_date FROM test;

SELECT * FROM contacts WHERE contact_id BETWEEN 100 AND 200;


------- TRIGGERS MYSQL ------

DELIMITER |
CREATE TRIGGER `update_post` AFTER INSERT ON `post` 
FOR EACH ROW 
  BEGIN 
    INSERT INTO log Set txt = 'insert', id = NEW.id; 
  END;

DELIMITER $$
CREATE TRIGGER new_profile AFTER INSERT ON user
FOR EACH ROW
  BEGIN
    INSERT profiles(user_id). VALUES (NEW.id)
  END 


DELIMITER $$
CREATE TRIGGER update_user AFTER INSERT ON profilles
FOR EACH ROW
  BEGIN
    UPDATE users SET updated_at = now() WHERE id = OLD.user_id
  END 




****************** POSTGRESQL **************************

CREATE TABLE cities (
  id SERIAL PRIMARY KEY, // SERIAL как auto_increment в mysql
  name VARCHAR(255) NOT NULL UNIQUE,
  regions_id INTEGER NOT NULL,
  FOREIGN KEY (regions_id) REFERENCES reions(id)
)
