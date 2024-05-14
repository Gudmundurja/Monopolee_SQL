# Coursework 1
#CREATE DATABaSE Mono;
show tables;
USE Monopolee;
drop table players;
-- -----------------------------------------------------
-- Table players
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS players (
  player_id int,
  player_name VARCHAR(155),
  token VARCHAR(50),
  bank_balance int,
  curr_location VARCHAR(155),
  curr_bonus int,
  PRIMARY KEY (player_id));


-- -----------------------------------------------------
-- Table properties
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS propreties (
  property_name VARCHAR(50),
  cost int,
  PRIMARY KEY (property_name));

-- -----------------------------------------------------
-- Table bonuses
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS bonuses (
  bonus_id int,
  bonus_name VARCHAR(50),
  description VARCHAR(255),
  PRIMARY KEY (bonus_id));

-- -----------------------------------------------------
-- Table audit_trail
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS audit_trail (
  player_id int,
  location VARCHAR(50),
  bank_balance int,
  round_number int,
  PRIMARY KEY (player_id));

-- -----------------------------------------------------
-- Table Tokens
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS tokens (
  token_name VARCHAR(50),
  PRIMARY KEY (token_name));

-- -----------------------------------------------------
-- Table location
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS location (
  location_name VARCHAR(50),
  PRIMARY KEY (location_name));
