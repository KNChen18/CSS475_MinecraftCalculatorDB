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

--------------------------------malachi 3/1------------------------------------

CREATE TABLE `WEAPON`(
    `WeaponID` INT PRIMARY KEY UNIQUE NOT NULL ,
    `Name` VARCHAR( 'Wooden Shovel', 'Stone Shovel', 'Iron Shovel', 'Gold Shovel', 'Diamond Shovel', 'Netherite Shovel'
                    'Wooden Hoe', 'Stone Hoe', 'Iron Hoe', 'Gold Hoe', 'Diamond Hoe', 'Netherite Hoe'
                    'Wooden Sword', 'Stone Sword', 'Iron Sword', 'Gold Sword', 'Diamond Sword', 'Netherite Sword'
                    'Wooden Axe', 'Stone Axe', 'Iron Axe', 'Gold Axe', 'Diamond Axe', 'Netherite Axe'
                    'Wooden Pickaxe', 'Stone Pickaxe', 'Iron Pickaxe', 'Gold Pickaxe', 'Diamond Pickaxe', 'Netherite Pickaxe'
                    ) UNIQUE NOT NULL,
	`MaterialType` VARCHAR('Wooden', 'Stone', 'Iron', 'Gold', 'Diamond', 'Netherite') NOT NULL,
    `WeaponType` VARCHAR('Shovel', 'Hoe', 'Sword', 'Axe', 'Pickaxe') NOT NULL,
    `WeaponRecipe` RECIPE
    `durability` INT  NOT NULL,
    `knockback` INT NOT NULL,
    `base damage` INT NOT NULL,
    `reload time` INT NOT NULL,
);

CREATE TABLE `Material`(
    `MaterialID` INT PRIMARY KEY NOT NULL,
    `Name` VARCHAR(`*EMPTY*`, `Stick`, `Oak Plank`, `Cobblestone`, `Iron Ingot`, `Gold Ingot`, `Diamond`, `Netherite Ingot`, `String`)
);

CREATE TABLE `Recipe`(
    `RecipeID` INT PRIMARY KEY UNIQUE NOT NULL --takes in reference key from `WEAPON` how?
    `Material1` VARCHAR(Material.MaterialID)    -- is set to be a materialID 
    `Material2` VARCHAR(Material.MaterialID)
    `Material3` VARCHAR(Material.MaterialID)
    `Material4` VARCHAR(Material.MaterialID)
    `Material5` VARCHAR(Material.MaterialID)
    `Material6` VARCHAR(Material.MaterialID)
    `Material7` VARCHAR(Material.MaterialID)
    `Material8` VARCHAR(Material.MaterialID)
    `Material9` VARCHAR(Material.MaterialID)
);




DROP DATABASE `MINECRAFT`;