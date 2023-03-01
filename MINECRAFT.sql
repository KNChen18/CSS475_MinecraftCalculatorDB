SHOW DATABASES;
CREATE DATABASE `MINECRAFT`;
SHOW DATABASES;

USE `MINECRAFT`;

-- DROP TABLE ARMOR;
-- DROP TABLE MOB;

-- Ka Hin 
-- Note: It is just initalizing my part
CREATE TABLE `ARMOR`(
	`NamingID` INT PRIMARY KEY UNIQUE NOT NULL ,
    `Name` VARCHAR(41) UNIQUE NOT NULL, 
	`Material` VARCHAR(41) NOT NULL,
    `Durability` INT NOT NULL,
    `knockback reduction` INT,
    `Armor toughness` INT,
    `Armor Resistance` INT,
    `Enchantment ID` INT NOT NULL
);

DESCRIBE `ARMOR`; -- display how we store the ARMOR TABLE

CREATE TABLE MOB(
`ID` INT PRIMARY KEY UNIQUE NOT NULL,
`Name` VARCHAR ( 40 ) UNIQUE NOT NULL,
`Health` INT NOT NULL,
`Damage Per Hit` INT,
`Attack Speed` INT,
`Special Abilities` VARCHAR(50), -- temporary set to 50 words
`Total Resistance` INT,
`ARMOR ID` INT  UNIQUE NOT NULL,
`WEAPON ID` INT UNIQUE NOT NULL
-- ARMOR ID and WEAPON are foreign key
);

DESCRIBE `MOB`; -- display how we store the MOB TABLE

CREATE TABLE `POTION`(
    `Potion ID` INT PRIMARY KEY UNIQUE NOT NULL,
    `Name` VARCHAR( 20 ) UNIQUE NOT NULL
);

DESCRIBE `POTION`;

CREATE TABLE `POTION AFFECT`(
    `Potion ID` INT ,
    `Mob ID` INT NOT NULL
);

DESCRIBE `POTION AFFECT`;
-- end of Ka Hin 

DROP DATABASE `MINECRAFT`;