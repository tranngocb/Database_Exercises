USE codeup_test_db;

DROP TABLE IF EXISTS quotes;
DROP TABLE IF EXISTS airports;
DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS users;


CREATE TABLE quotes (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  author_first_name VARCHAR(50),
  author_last_name VARCHAR(100) NOT NULL,
  content TEXT NOT NULL,
  created_at DATETIME,
  updated_at DATETIME
);

CREATE TABLE airports(
  airport_code CHAR(3),
  location VARCHAR(255),
  description TEXT
);

CREATE TABLE people(
  name VARCHAR(255) NOT NULL,
  age DECIMAL(4,1) NOT NULL
);

CREATE TABLE users (
  username VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  is_admin TINYINT NOT NULL
);
