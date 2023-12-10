SET NAMES utf8mb4;
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';
DROP SCHEMA IF EXISTS mydb;
CREATE SCHEMA mydb;
USE mydb;

CREATE TABLE users (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE managers (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL,
  user_id INT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO users (name, email, password) VALUES
  ('user', 'user@email.com', '123456'),
  ('Matheus Santos', 'matheus.santos@example.com', 'password2'),
  ('Juliana Pereira', 'juliana.pereira@example.com', 'password3'),
  ('Leonardo Silva', 'leonardo.silva@example.com', 'password4'),
  ('Aline Rodrigues', 'aline.rodrigues@example.com', 'password5');

INSERT INTO managers (name, email, password, user_id) VALUES
  ('Manager 1', 'manager1@example.com', 'managerpassword1', 1),
  ('Manager 2', 'manager2@example.com', 'managerpassword2', 2),
  ('Manager 3', 'manager3@example.com', 'managerpassword3', 3),
  ('Manager 4', 'manager4@example.com', 'managerpassword4', 4),
  ('Manager 5', 'manager5@example.com', 'managerpassword5', 5);