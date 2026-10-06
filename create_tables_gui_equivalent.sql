-- Đây là mã SQL tương đương với các thao tác tạo bảng trên GUI (MySQL Workbench)
-- Dành cho CSDL student-management

USE `student-management`;

CREATE TABLE `Class` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `Teacher` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `age` INT NULL,
  `country` VARCHAR(45) NULL,
  PRIMARY KEY (`id`)
);
