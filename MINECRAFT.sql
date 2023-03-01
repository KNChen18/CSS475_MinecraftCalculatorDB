-- CREATE DATABASE `MINECRAFT`;
-- DROP DATABASE `MINECRAFT`;
-- SHOW DATABASES;
-- USE `MINECRAFT`;

DROP TABLE ARMOR;
DROP TABLE MOB;

-- Ka Hin 
-- Note: It is just initalizing my part
CREATE TABLE `ARMOR`(
	`NamingID` INT PRIMARY KEY UNIQUE NOT NULL ,
    `Name` VARCHAR(41) UNIQUE NOT NULL,
    -- the longest item name has 41 characters inlcuding spaces
	`Material` VARCHAR(41) NOT NULL,
    `Durability` INT NOT NULL,
    `knockback reduction` INT ,
    `Armor toughness` INT,
    `Armor Resistance` INT
);

-- DESCRIBE `ARMOR`; -- display how we store the ARMOR TABLE

CREATE TABLE MOB(
`ID` INT PRIMARY KEY UNIQUE NOT NULL,
`Name` VARCHAR ( 40 ) UNIQUE NOT NULL,
`Health` INT NOT NULL,
`Damage Per Hit` INT,
`Attack Speed` INT,
`Special Abilities` VARCHAR(50), -- temporary set to 50 words
`Total Resistance` INT
);

-- DESCRIBE `MOB`; -- display how we store the MOB TABLE

-- CREATE TABLE AFFECT(

-- );
-- end of Ka Hin 
