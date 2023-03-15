DROP DATABASE `MINECRAFT`;

-- create Database called `MINECRAFT`
CREATE DATABASE `MINECRAFT`;

USE `MINECRAFT`;

-- --------------------------------------------------
-- ------------------TABLE CREATION------------------
CREATE TABLE `MOB`(
`NamingID` VARCHAR(41) PRIMARY KEY UNIQUE NOT NULL,
`Health` INT NOT NULL,
`Attack Damage` INT,
`Attack Speed` INT,
`Special Abilities` VARCHAR(50),
`Wears Armor` TINYINT NOT NULL,
`Equip Weapons` TINYINT NOT NULL
);

CREATE TABLE `ARMOR`(
   `NamingID` VARCHAR(41) PRIMARY KEY UNIQUE NOT NULL ,
   `Material Type` VARCHAR(41) NOT NULL,
   `Durability` INT NOT NULL,
   `Defense Points` FLOAT,
   `Knockback Resistance` FLOAT,
   `RecipeID` INT NOT NULL UNIQUE 
);

CREATE TABLE `WEAPON`(
    `WeaponID` INT PRIMARY KEY UNIQUE NOT NULL ,
    `Name` VARCHAR(50) UNIQUE NOT NULL,
    CONSTRAINT chk_weapon_name CHECK ( `Name` IN ( 'Wooden Shovel', 'Stone Shovel', 'Iron Shovel', 'Gold Shovel', 'Diamond Shovel', 'Netherite Shovel',
                    'Wooden Hoe', 'Stone Hoe', 'Iron Hoe', 'Gold Hoe', 'Diamond Hoe', 'Netherite Hoe',
                    'Wooden Sword', 'Stone Sword', 'Iron Sword', 'Gold Sword', 'Diamond Sword', 'Netherite Sword',
                    'Wooden Axe', 'Stone Axe', 'Iron Axe', 'Gold Axe', 'Diamond Axe', 'Netherite Axe',
                    'Wooden Pickaxe', 'Stone Pickaxe', 'Iron Pickaxe', 'Gold Pickaxe', 'Diamond Pickaxe', 'Netherite Pickaxe'
                    )) ,
    `durability` INT  NOT NULL,
    `knockback` FLOAT NOT NULL,
    `base damage` FLOAT NOT NULL,
    `reload time` FLOAT NOT NULL,
    `RecipeID` INT NOT NULL UNIQUE
);

CREATE TABLE `Material`(
    `MaterialID` INT NOT NULL,
    `Name` VARCHAR(41) NOT NULL,
    PRIMARY KEY (MaterialID)
);

CREATE TABLE `RECIPE`(
    `RecipeID` INT UNIQUE NOT NULL, -- recipe ID is the same as namingID of the item being created 
    `Material1` INT,    
    `Material2` INT,
    `Material3` INT,
    `Material4` INT,
    `Material5` INT,
    `Material6` INT,
    `Material7` INT,
    `Material8` INT,
    `Material9` INT,
    PRIMARY KEY (`RecipeID`)
);

CREATE TABLE `POTION` (
  `Potion_id` INT NOT NULL UNIQUE PRIMARY KEY,
  `duration` INT NOT NULL,
  `level` VARCHAR(2) NOT NULL CHECK( `level` IN ( 'I','II','III','IV','V' )),
  `effects` VARCHAR(100) NOT NULL
);

CREATE TABLE `ENCHANTMENTS` (
    `ENCHANTMENT_ID` int UNIQUE PRIMARY KEY,
    `ENCHANTMENT_TYPE` ENUM('ARMOUR', 'WEAPON'),
    `ENCHANTMENT_NAME` ENUM ('PROTECTION', 'BLAST_PROTECTION','PROJECTILE_PROTECTION','FIRE_PROTECTION', 'FEATHER_FALLING', 'SHARPNESS', 'FIRE_ASPECT',
							'SMITE', 'Bane_of_Arthropods', 'KNOCKBACK', 'SWEEPING_EDGE', 'POWER','MULTISHOOT', 'PIERCING', 'PUNCH', 'QUICK_CHARGE', 'FLAME', 'IMPALING', 'RIPTIDE'),
	`STACK_NUM` ENUM ('I', 'II', 'III', 'IV', 'V')
);


CREATE TABLE `ARMOR ENCHANTED`(
    `ENCHANTED_ARMOR_ID` INT,
    `ARMOR_ID` VARCHAR(41),
    `ENCHANTMENT_ID` int
);

CREATE TABLE `WEAPON ENCHANTED`(
    `ENCHANTED_WEAPON_ID` INT,
    `WEAPON_ID` INT,
    `ENCHANTMENT_ID` int
);

CREATE TABLE `STATS`(
    `STAT_ID` int UNIQUE PRIMARY KEY,
    `MOBID`   VARCHAR(41),
    `ENCHANTED_WEAPON_ID` INT,
    `POTION_ID` INT,
    `ENCHANTED HEMLET ID` VARCHAR(41),
    `ENCHANTED CHESTPLATE ID` VARCHAR(41),
    `ENCHANTED LEGGINGS ID` VARCHAR(41),
    `ENCHANTED BOOTS ID` VARCHAR(41)
);


