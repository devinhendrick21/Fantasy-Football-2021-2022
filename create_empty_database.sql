-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema fantasy
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema fantasy
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `fantasy` DEFAULT CHARACTER SET utf8 ;
USE `fantasy` ;

-- -----------------------------------------------------
-- Table `fantasy`.`teams`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fantasy`.`teams` (
  `team_id` INT NOT NULL,
  `team_name` VARCHAR(30) NOT NULL,
  `conference` VARCHAR(3) NOT NULL,
  `state` VARCHAR(25) NOT NULL,
  `city` VARCHAR(25) NOT NULL,
  `sos_last_year` DOUBLE NOT NULL,
  `sos_this_year` DOUBLE NOT NULL,
  PRIMARY KEY (`team_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `fantasy`.`coaches`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fantasy`.`coaches` (
  `coach_id` INT NOT NULL,
  `coach_name` VARCHAR(30) NOT NULL,
  `team_id` INT NOT NULL,
  PRIMARY KEY (`coach_id`),
  INDEX `fk_coaches_teams_idx` (`team_id` ASC) VISIBLE,
  CONSTRAINT `fk_coaches_teams`
    FOREIGN KEY (`team_id`)
    REFERENCES `fantasy`.`teams` (`team_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `fantasy`.`qb`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fantasy`.`qb` (
  `player_id` INT NOT NULL,
  `team_name` VARCHAR(30) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `games_played` INT NOT NULL,
  `position_rank` INT NOT NULL,
  `average_points` DOUBLE NOT NULL,
  `total_points` DOUBLE NOT NULL,
  `pass_yds_per_game` DOUBLE NOT NULL,
  `pass_yards` INT NOT NULL,
  `pass_TD` INT NOT NULL,
  `rush_yards` INT NOT NULL,
  `rush_TD` INT NOT NULL,
  `rush_yds_per_game` DOUBLE NOT NULL,
  `fumbles_lost` INT NOT NULL,
  `total_TD` INT NOT NULL,
  `team_id` INT NOT NULL,
  `int` INT NOT NULL,
  PRIMARY KEY (`player_id`),
  INDEX `fk_qb_teams1_idx` (`team_id` ASC) VISIBLE,
  CONSTRAINT `fk_qb_teams1`
    FOREIGN KEY (`team_id`)
    REFERENCES `fantasy`.`teams` (`team_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `fantasy`.`rb`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fantasy`.`rb` (
  `player_id` INT NOT NULL,
  `team_name` VARCHAR(30) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `games_played` INT NOT NULL,
  `position_rank` INT NOT NULL,
  `average_points` DOUBLE NOT NULL,
  `total_points` DOUBLE NOT NULL,
  `rush_yards` INT NOT NULL,
  `rush_yds_per_game` DOUBLE NOT NULL,
  `rush_TD` INT NOT NULL,
  `ypc` DOUBLE NOT NULL,
  `avg_carries` DOUBLE NOT NULL,
  `total_carries` INT NOT NULL,
  `receptions` INT NOT NULL,
  `rec_yards` INT NOT NULL,
  `rec_TD` INT NOT NULL,
  `avg_receptions` DOUBLE NOT NULL,
  `rec_yards_per_game` VARCHAR(4) NOT NULL,
  `fumbles_lost` INT NOT NULL,
  `total_TD` INT NOT NULL,
  `team_id` INT NOT NULL,
  PRIMARY KEY (`player_id`),
  INDEX `fk_rb_teams1_idx` (`team_id` ASC) VISIBLE,
  CONSTRAINT `fk_rb_teams1`
    FOREIGN KEY (`team_id`)
    REFERENCES `fantasy`.`teams` (`team_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `fantasy`.`wr`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fantasy`.`wr` (
  `player_id` INT NOT NULL,
  `team_name` VARCHAR(30) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `games_played` INT NOT NULL,
  `position_rank` INT NOT NULL,
  `average_points` DOUBLE NOT NULL,
  `total_points` DOUBLE NOT NULL,
  `receptions` INT NOT NULL,
  `rec_yards` INT NOT NULL,
  `rec_TD` INT NOT NULL,
  `avg_receptions` DOUBLE NOT NULL,
  `rec_yards_per_game` DOUBLE NOT NULL,
  `targets` INT NOT NULL,
  `rush_yards` INT NOT NULL,
  `rush_yds_per_game` DOUBLE NOT NULL,
  `rush_TD` INT NOT NULL,
  `fumbles_lost` INT NOT NULL,
  `total_TD` INT NOT NULL,
  `team_id` INT NOT NULL,
  PRIMARY KEY (`player_id`),
  INDEX `fk_wr_teams1_idx` (`team_id` ASC) VISIBLE,
  CONSTRAINT `fk_wr_teams1`
    FOREIGN KEY (`team_id`)
    REFERENCES `fantasy`.`teams` (`team_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `fantasy`.`te`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fantasy`.`te` (
  `player_id` INT NOT NULL,
  `team_name` VARCHAR(30) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `games_played` INT NOT NULL,
  `position_rank` INT NOT NULL,
  `average_points` DOUBLE NOT NULL,
  `total_points` DOUBLE NOT NULL,
  `receptions` INT NOT NULL,
  `rec_yards` INT NOT NULL,
  `rec_TD` INT NOT NULL,
  `avg_receptions` DOUBLE NOT NULL,
  `rec_yards_per_game` DOUBLE NOT NULL,
  `targets` INT NOT NULL,
  `fumbles_lost` INT NOT NULL,
  `total_TD` INT NOT NULL,
  `team_id` INT NOT NULL,
  PRIMARY KEY (`player_id`),
  INDEX `fk_te_teams1_idx` (`team_id` ASC) VISIBLE,
  CONSTRAINT `fk_te_teams1`
    FOREIGN KEY (`team_id`)
    REFERENCES `fantasy`.`teams` (`team_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `fantasy`.`skilled`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fantasy`.`skilled` (
  `team_id` INT NOT NULL,
  `team_name` VARCHAR(30) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `games_played` INT NOT NULL,
  `position_rank` INT NOT NULL,
  `average_points` DOUBLE NOT NULL,
  `total_points` DOUBLE NOT NULL,
  `receptions` INT NOT NULL,
  `rec_yards` INT NOT NULL,
  `rec_TD` INT NOT NULL,
  `avg_receptions` DOUBLE NOT NULL,
  `rec_yards_per_game` DOUBLE NOT NULL,
  `rush_yards` INT NOT NULL,
  `rush_yds_per_game` DOUBLE NOT NULL,
  `rush_TD` INT NOT NULL,
  `total_TD` INT NOT NULL)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `fantasy`.`players`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `fantasy`.`players` (
  `team_id` INT NOT NULL,
  `team_name` VARCHAR(30) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `games_played` INT NOT NULL,
  `position_rank` INT NOT NULL,
  `average_points` DOUBLE NOT NULL,
  `total_points` DOUBLE NOT NULL,
  `total_TD` INT NOT NULL)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
