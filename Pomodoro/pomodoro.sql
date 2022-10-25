-- MySQL Script generated by MySQL Workbench
-- Mon Oct 24 21:54:52 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema pomodoro
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `pomodoro` ;

-- -----------------------------------------------------
-- Schema pomodoro
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `pomodoro` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `pomodoro` ;

-- -----------------------------------------------------
-- Table 'pomodoro'.'usuarios'
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pomodoro`.`usuarios` (
  `id_usuarios` INT NOT NULL AUTO_INCREMENT,
  `usuario` VARCHAR(45) NULL DEFAULT NULL,
  `contrasenia` BLOB NULL DEFAULT NULL,
  PRIMARY KEY (`id_usuarios`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `pomodoro`.`tareas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `pomodoro`.`tareas` (
  `id_tareas` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(100) NULL DEFAULT NULL,
  `estado` VARCHAR(45) NULL DEFAULT NULL,
  `id_usuario` INT NOT NULL,
  PRIMARY KEY (`id_tareas`),
  INDEX `id_usuario_idx` (`id_usuario` ASC),
  CONSTRAINT `id_usuario`
    FOREIGN KEY (`id_usuario`)
    REFERENCES `pomodoro`.`usuarios` (`id_usuarios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
