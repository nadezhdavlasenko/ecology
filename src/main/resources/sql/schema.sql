SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

SET NAMES 'utf8';
SET CHARACTER SET 'utf8';
SET SESSION collation_connection = 'utf8_general_ci';
-- -----------------------------------------------------
-- Schema ecomonitoring
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `ecomonitoring` ;

-- -----------------------------------------------------
-- Schema ecology
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ecomonitoring` DEFAULT CHARACTER SET utf8 ;
USE `ecomonitoring` ;

-- -----------------------------------------------------
-- Table `ecology`.`places`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ecomonitoring`.`points` ;

CREATE TABLE IF NOT EXISTS `ecomonitoring`.`points` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `longitude` DOUBLE NULL,
  `latitude` DOUBLE NULL,
  PRIMARY KEY (`id`))
  ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `ecomonitoring`.`boundaryTolerance`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ecomonitoring`.`boundaryTolerance` ;

CREATE TABLE IF NOT EXISTS `ecomonitoring`.`boundaryTolerance` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `massFlow` DOUBLE NULL,
  `class` INT NOT NULL,
  `boundaryTolerance` DOUBLE NULL,
  PRIMARY KEY (`id`))
  ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ecomonitoring`.`pollutingFacility`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ecomonitoring`.`pollutingFacility` ;

CREATE TABLE IF NOT EXISTS `ecomonitoring`.`pollutingFacility` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `volume` VARCHAR(45) NULL,
#   `funds` DOUBLE NULL,
  `points_id` INT NOT NULL,
  `boundaryTolerance_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_pollutingFacility_points_idx` (`points_id` ASC),
  INDEX `fk_pollutingFacility_boundaryTolerance1_idx` (`boundaryTolerance_id` ASC),
  CONSTRAINT `fk_pollutingFacility_points`
  FOREIGN KEY (`points_id`)
  REFERENCES `ecology`.`points` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pollutingFacility_boundaryTolerance1`
  FOREIGN KEY (`boundaryTolerance_id`)
  REFERENCES `ecology`.`boundaryTolerance` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;