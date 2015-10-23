-- MySQL Script generated by MySQL Workbench
-- Fri Oct 23 13:28:49 2015
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema oilsec
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `oilsec` ;

-- -----------------------------------------------------
-- Schema oilsec
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `oilsec` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `oilsec` ;

-- -----------------------------------------------------
-- Table `oilsec`.`comments`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `oilsec`.`comments` ;

CREATE TABLE IF NOT EXISTS `oilsec`.`comments` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `date` DATETIME NOT NULL,
  `comment` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `oilsec`.`inventory`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `oilsec`.`inventory` ;

CREATE TABLE IF NOT EXISTS `oilsec`.`inventory` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `type` VARCHAR(200) NOT NULL,
  `quantity` INT NOT NULL DEFAULT 0,
  `location` VARCHAR(400) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `oilsec`.`tomcat_users`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `oilsec`.`tomcat_users` ;

CREATE TABLE IF NOT EXISTS `oilsec`.`tomcat_users` (
  `user_name` VARCHAR(20) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`user_name`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `oilsec`.`tomcat_roles`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `oilsec`.`tomcat_roles` ;

CREATE TABLE IF NOT EXISTS `oilsec`.`tomcat_roles` (
  `role_name` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`role_name`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `oilsec`.`tomcat_users_roles`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `oilsec`.`tomcat_users_roles` ;

CREATE TABLE IF NOT EXISTS `oilsec`.`tomcat_users_roles` (
  `user_name` VARCHAR(20) NOT NULL,
  `role_name` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`user_name`, `role_name`),
  INDEX `tomcar_users_roles_foreign_key_1_idx` (`user_name` ASC),
  CONSTRAINT `tomcat_users_roles_foreign_key_1`
    FOREIGN KEY (`user_name`)
    REFERENCES `oilsec`.`tomcat_users` (`user_name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `tomcat_users_roles_foreign_key_2`
    FOREIGN KEY (`role_name`)
    REFERENCES `oilsec`.`tomcat_roles` (`role_name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SET SQL_MODE = '';
GRANT USAGE ON *.* TO realm_access;
 DROP USER realm_access;
SET SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';
CREATE USER 'realm_access' IDENTIFIED BY 'realmpass';

GRANT SELECT ON TABLE `oilsec`.* TO 'realm_access';

CREATE USER 'oiluser'@'localhost' IDENTIFIED BY 'oiluser';
GRANT ALL PRIVILEGES ON `oilsec` . * TO 'oiluser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `oilsec`.`inventory`
-- -----------------------------------------------------
START TRANSACTION;
USE `oilsec`;
INSERT INTO `oilsec`.`inventory` (`id`, `type`, `quantity`, `location`) VALUES (DEFAULT, 'Turbosina', 300, 'Almacén B');
INSERT INTO `oilsec`.`inventory` (`id`, `type`, `quantity`, `location`) VALUES (DEFAULT, 'Diesel', 4123, 'Almacén A');
INSERT INTO `oilsec`.`inventory` (`id`, `type`, `quantity`, `location`) VALUES (DEFAULT, 'Pemex Magna', 8124, 'Almacén B');
INSERT INTO `oilsec`.`inventory` (`id`, `type`, `quantity`, `location`) VALUES (DEFAULT, 'Pemex Premium', 12123, 'Almacén C');
INSERT INTO `oilsec`.`inventory` (`id`, `type`, `quantity`, `location`) VALUES (DEFAULT, 'Gas licuado', 4412, 'Almacén A');
INSERT INTO `oilsec`.`inventory` (`id`, `type`, `quantity`, `location`) VALUES (DEFAULT, 'Gas natural', 4001, 'Almacén B');

COMMIT;


-- -----------------------------------------------------
-- Data for table `oilsec`.`tomcat_users`
-- -----------------------------------------------------
START TRANSACTION;
USE `oilsec`;
INSERT INTO `oilsec`.`tomcat_users` (`user_name`, `password`) VALUES ('admin', 'admin');
INSERT INTO `oilsec`.`tomcat_users` (`user_name`, `password`) VALUES ('rodolfo', 'rodo');
INSERT INTO `oilsec`.`tomcat_users` (`user_name`, `password`) VALUES ('luis', 'luis');
INSERT INTO `oilsec`.`tomcat_users` (`user_name`, `password`) VALUES ('fer', 'fercho');
INSERT INTO `oilsec`.`tomcat_users` (`user_name`, `password`) VALUES ('tomcat', 'tomcat');

COMMIT;


-- -----------------------------------------------------
-- Data for table `oilsec`.`tomcat_roles`
-- -----------------------------------------------------
START TRANSACTION;
USE `oilsec`;
INSERT INTO `oilsec`.`tomcat_roles` (`role_name`) VALUES ('admin');
INSERT INTO `oilsec`.`tomcat_roles` (`role_name`) VALUES ('guest');
INSERT INTO `oilsec`.`tomcat_roles` (`role_name`) VALUES ('manager-gui');
INSERT INTO `oilsec`.`tomcat_roles` (`role_name`) VALUES ('manager-script');
INSERT INTO `oilsec`.`tomcat_roles` (`role_name`) VALUES ('manager-status');
INSERT INTO `oilsec`.`tomcat_roles` (`role_name`) VALUES ('manager-jmx');

COMMIT;


-- -----------------------------------------------------
-- Data for table `oilsec`.`tomcat_users_roles`
-- -----------------------------------------------------
START TRANSACTION;
USE `oilsec`;
INSERT INTO `oilsec`.`tomcat_users_roles` (`user_name`, `role_name`) VALUES ('admin', 'admin');
INSERT INTO `oilsec`.`tomcat_users_roles` (`user_name`, `role_name`) VALUES ('rodolfo', 'admin');
INSERT INTO `oilsec`.`tomcat_users_roles` (`user_name`, `role_name`) VALUES ('luis', 'admin');
INSERT INTO `oilsec`.`tomcat_users_roles` (`user_name`, `role_name`) VALUES ('fer', 'admin');
INSERT INTO `oilsec`.`tomcat_users_roles` (`user_name`, `role_name`) VALUES ('tomcat', 'manager-gui');
INSERT INTO `oilsec`.`tomcat_users_roles` (`user_name`, `role_name`) VALUES ('tomcat', 'manager-status');
INSERT INTO `oilsec`.`tomcat_users_roles` (`user_name`, `role_name`) VALUES ('tomcat', 'manager-script');
INSERT INTO `oilsec`.`tomcat_users_roles` (`user_name`, `role_name`) VALUES ('tomcat', 'manager-jmx');

COMMIT;
