-- MySQL Workbench Synchronization
-- Generated: 2020-10-21 11:21
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Mariajo

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

ALTER SCHEMA `socialnetwork`  DEFAULT COLLATE utf8mb4_general_ci ;

ALTER TABLE `socialnetwork`.`usuaris` 
COLLATE = utf8mb4_general_ci ;

ALTER TABLE `socialnetwork`.`fotografies` 
COLLATE = utf8mb4_general_ci ,
ADD INDEX `fk_fotografies_usuaris1_idx` (`usuaris_id` ASC) VISIBLE,
DROP INDEX `fk_fotografies_usuaris1_idx` ;
;

ALTER TABLE `socialnetwork`.`usuaris_has_usuaris` 
COLLATE = utf8mb4_general_ci ,
ADD INDEX `fk_usuaris_has_usuaris_usuaris1_idx` (`usuaris_id1` ASC) VISIBLE,
ADD INDEX `fk_usuaris_has_usuaris_usuaris_idx` (`usuaris_id` ASC) VISIBLE,
DROP INDEX `fk_usuaris_has_usuaris_usuaris_idx` ,
DROP INDEX `fk_usuaris_has_usuaris_usuaris1_idx` ;
;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
