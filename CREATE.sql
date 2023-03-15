-- create Database called `MINECRAFT`
CREATE DATABASE `MINECRAFT`;

USE `MINECRAFT`;

CREATE TABLE `ARMOR`(
   `NamingID` VARCHAR(41) PRIMARY KEY UNIQUE NOT NULL ,
   `Material Type` VARCHAR(41) NOT NULL,
   `Durability` INT NOT NULL,
   `Defense Points` FLOAT,
   `Knockback Resistance` FLOAT,
   `RecipeID` INT NOT NULL UNIQUE 
);

DESCRIBE `ARMOR`;

CREATE TABLE `MOB`(
`NamingID` VARCHAR(41) PRIMARY KEY UNIQUE NOT NULL,
`Health` INT NOT NULL,
`Attack Damage` INT,
`Attack Speed` INT,
`Special Abilities` VARCHAR(50),
`Wears Armor` TINYINT NOT NULL,
`Equip Weapons` TINYINT NOT NULL
);

DESCRIBE `MOB`;

CREATE TABLE `POTION` (
  `Potion_id` INT NOT NULL UNIQUE PRIMARY KEY,
  `duration` INT NOT NULL,
  `level` VARCHAR(2) NOT NULL CHECK( `level` IN ( 'I','II','III','IV','V' )),
  `effects` VARCHAR(100) NOT NULL
);

DESCRIBE `POTION`;

CREATE TABLE `WEAPON`(
    `WeaponID` INT PRIMARY KEY UNIQUE NOT NULL ,
    `Name` VARCHAR(50) UNIQUE NOT NULL,
    CONSTRAINT chk_weapon_name CHECK ( `Name` IN ( 'Wooden Shovel', 'Stone Shovel', 'Iron Shovel', 'Gold Shovel', 'Diamond Shovel', 'Netherite Shovel',
                    'Wooden Hoe', 'Stone Hoe', 'Iron Hoe', 'Gold Hoe', 'Diamond Hoe', 'Netherite Hoe',
                    'Wooden Sword', 'Stone Sword', 'Iron Sword', 'Gold Sword', 'Diamond Sword', 'Netherite Sword',
                    'Wooden Axe', 'Stone Axe', 'Iron Axe', 'Gold Axe', 'Diamond Axe', 'Netherite Axe',
                    'Wooden Pickaxe', 'Stone Pickaxe', 'Iron Pickaxe', 'Gold Pickaxe', 'Diamond Pickaxe', 'Netherite Pickaxe'
                    )) ,
    `MaterialType` VARCHAR(10) NOT NULL,
    CONSTRAINT chk_Material_Type CHECK ( `MaterialType` IN ('Wooden', 'Stone', 'Iron', 'Gold', 'Diamond', 'Netherite')),
    `WeaponType` VARCHAR(10) NOT NULL,
    CONSTRAINT chk_Weapon_Type CHECK ( `WeaponType` IN ('Shovel', 'Hoe', 'Sword', 'Axe', 'Pickaxe')),
    `durability` INT  NOT NULL,
    `knockback` FLOAT NOT NULL,
    `base damage` FLOAT NOT NULL,
    `reload time` FLOAT NOT NULL,
    FOREIGN KEY (RecipeID) REFERENCES  Recipe(RecipeID)
);

DESCRIBE `WEAPON`;

CREATE TABLE `Material`(
    `MaterialID` INT NOT NULL,
    PRIMARY KEY (MaterialID)
);

DESCRIBE `Material`;

CREATE TABLE `Recipe`(
    `RecipeID` INT UNIQUE NOT NULL, -- recipe ID is the same as namingID of the item being created 
    `Output_NamingID` INT, -- this is foreign key of the output
    FOREIGN KEY `Material1` REFERENCES `Material` ( `MaterialID` ),    
    FOREIGN KEY `Material2` REFERENCES `Material` ( `MaterialID` ),
    FOREIGN KEY `Material3` REFERENCES `Material` ( `MaterialID` ),
    FOREIGN KEY `Material4` REFERENCES `Material` ( `MaterialID` ),
    FOREIGN KEY `Material5` REFERENCES `Material` ( `MaterialID` ),
    FOREIGN KEY `Material6` REFERENCES `Material` ( `MaterialID` ),
    FOREIGN KEY `Material7` REFERENCES `Material` ( `MaterialID` ),
    FOREIGN KEY `Material8` REFERENCES `Material` ( `MaterialID` ),
    FOREIGN KEY `Material9` REFERENCES `Material` ( `MaterialID` ),
    PRIMARY KEY (RecipeID)
);

DESCRIBE `Recipe`;

CREATE TABLE `ENCHANTMENTS` (
    `ENCHANTMENT_ID` int UNIQUE PRIMARY KEY,
    `ENCHANTMENT_TYPE` ENUM('ARMOUR', 'WEAPON'),
    `ENCHANTMENT_NAME` ENUM ('PROTECTION', 'BLAST_PROTECTION','PROJECTILE_PROTECTION','FIRE_PROTECTION', 'FEATHER_FALLING', 'SHARPNESS', 'FIRE_ASPECT',
							'SMITE', 'Bane_of_Arthropods', 'KNOCKBACK', 'SWEEPING_EDGE', 'POWER','MULTISHOOT', 'PIERCING', 'PUNCH', 'QUICK_CHARGE', 'FLAME', 'IMPALING', 'RIPTIDE'),
	`STACK_NUM` ENUM ('I', 'II', 'III', 'IV', 'V')
);
DESCRIBE `ENCHANTMENTS`;