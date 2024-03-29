-- Создать схему
CREATE SCHEMA `shop` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;

-- Создать таблицу
CREATE TABLE `shop`.`category` (
  `id` INT NOT NULL,
  `name` VARCHAR(128) NOT NULL,
  `discount` TINYINT NOT NULL,
  PRIMARY KEY (`id`));
  

-- Редактировать таблицу  
ALTER TABLE `shop`.`category` 
ADD COLUMN `alias_name` VARCHAR(128) NULL AFTER `discount`;


CREATE TABLE `shop`.`brand` (
  `id` INT NOT NULL,
  `name` VARCHAR(128) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


CREATE TABLE `shop`.`product_type` (
  `id` INT NOT NULL,
  `name` VARCHAR(128) NOT NULL,
  PRIMARY KEY (`id`));
  
  
-- В1ставить в таблицу таблицу
INSERT INTO `shop`.`category` (`id`, `name`, `discount`) VALUES ('1', 'Женская одежда', '5');
INSERT INTO `shop`.`category` (`id`, `name`, `discount`) VALUES ('2', 'Мужская одежда', '0');


Insert into category (id, name, discount, alias_name) values (3, 'Женская обувь', 10, null);
Insert into category (id, name, discount, alias_name) values (4, 'Мужская обувь', 15, 'man''s shoes');


-- Добавить автонумирацию идентификатора
ALTER TABLE `shop`.`category` 
CHANGE COLUMN `id` `id` INT(11) NOT NULL AUTO_INCREMENT ;


Insert into brand (name) values ('Платье');
Insert into brand (name) values ('Футболка');


Insert into product_type (name) values ('Платье');
Insert into product_type (name) values ('Футболка');


