SHOW DATABASES;
CREATE DATABASE `MINECRAFT`;
SHOW DATABASES;

USE `MINECRAFT`;

-- DROP TABLE ARMOR;
-- DROP TABLE MOB;

-- Ka Hin 
-- Note: It is just initalizing my part
CREATE TABLE `ARMOR`(
   `NamingID` VARCHAR(41) PRIMARY KEY UNIQUE NOT NULL ,
   `Name` VARCHAR(41) UNIQUE NOT NULL,
   `Material` VARCHAR(41) NOT NULL,
   `Durability` INT NOT NULL,
   `Defense Points` FLOAT,
   `Knockback Resistance` FLOAT,
   `Enchantment ID` INT
);

-- Helmets
INSERT INTO ARMOR VALUES( 'leather_helmet', 'Leather Cap', 'Leather', 55, 1, 0.1,NULL);
INSERT INTO ARMOR VALUES( 'golden_helmet', 'Golden Helmet', 'Gold', 77, 2, 0.1,NULL);
INSERT INTO ARMOR VALUES( 'chainmail_helmet', 'Chainmail Helmet', 'Chainmail', 165, 2, 0.1,NULL);
INSERT INTO ARMOR VALUES( 'iron_helmet', 'Iron Helmet', 'Iron', 165, 2, 0.1,NULL);
INSERT INTO ARMOR VALUES( 'diamond_helmet', 'Diamond Helmet', 'Diamond', 363, 3, 0.1,NULL);
INSERT INTO ARMOR VALUES( 'netherite_helmet', 'Netherite Helmet', 'Netherite Ingot', 407, 3, 0.1,NULL);
INSERT INTO ARMOR VALUES( 'turtle_helmet', 'Turtle Shell', 'Scute', 275, 2, 0.1,NULL);


-- Chestplate
INSERT INTO ARMOR VALUES( 'leather_chestplate', 'Leather Tunic', 'Leather', 80, 3, 0.1,NULL);
INSERT INTO ARMOR VALUES( 'golden_chestplate', 'Golden Chestplate', 'Gold', 112, 5, 0.1,NULL);
INSERT INTO ARMOR VALUES( 'chainmail_chestplate', 'Chainmail Chestplate', 'Chainmail', 240, 5, 0.1,NULL);
INSERT INTO ARMOR VALUES( 'iron_chestplate', 'Iron Chestplate', 'Iron', 240, 6, 0.1,NULL);
INSERT INTO ARMOR VALUES( 'diamond_chestplate', 'Diamond Chestplate', 'Diamond', 528, 8, 0.1,NULL);
INSERT INTO ARMOR VALUES( 'netherite_chestplate', 'Netherite Chestplate', 'Netherite Ingot', 592, 8, 0.1,NULL);


-- leggings
INSERT INTO ARMOR VALUES( 'leather_boots', 'Leather Pants', 'Leather', 75, 2, 0.1,NULL);
INSERT INTO ARMOR VALUES( 'golden_boots', 'Golden Leggings', 'Gold', 105, 1.5, 0.1,NULL);
INSERT INTO ARMOR VALUES( 'chainmail_boots', 'Chainmail Leggings', 'Chainmail', 225, 4, 0.1,NULL);
INSERT INTO ARMOR VALUES( 'iron_boots', 'Iron Leggings', 'Iron', 225, 5, 0.1,NULL);
INSERT INTO ARMOR VALUES( 'diamond_boots', 'Diamond Leggings', 'Diamond', 495, 6, 0.1,NULL);
INSERT INTO ARMOR VALUES( 'netherite_boots', 'Netherite Leggings', 'Netherite Ingot', 555, 6, 0.1,NULL);


-- boots
INSERT INTO ARMOR VALUES( 'leather_leggings', 'Leather Boots', 'Leather', 65, 1, 0.1,NULL);
INSERT INTO ARMOR VALUES( 'golden_leggings', 'Golden Boots', 'Gold', 91, 1, 0.1,NULL);
INSERT INTO ARMOR VALUES( 'chainmail_leggings', 'Chainmail Boots', 'Chainmail', 195, 1, 0.1,NULL);
INSERT INTO ARMOR VALUES( 'iron_leggings', 'Iron Boots', 'Iron', 195, 2, 0.1,NULL);
INSERT INTO ARMOR VALUES( 'diamond_leggings', 'Diamond Boots', 'Diamond', 429,3, 0.1,NULL);
INSERT INTO ARMOR VALUES( 'netherite_leggings', 'Netherite Boots', 'Netherite Ingot', 481, 3, 0.1,NULL);


SELECT * FROM ARMOR;

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
    `Name` VARCHAR( 20 ) UNIQUE NOT NULL,
    `Health` INT NOT NULL,
    `Attack Damage` INT , -- assume they are all in maximum damage
    `Attack Speed` FLOAT,
    `Special Abilities` VARCHAR(50),
    `Total Resistance` INT NOT NULL
);

DESCRIBE `POTION`;

CREATE TABLE `POTION AFFECT`(
    `Potion ID` INT ,
    `Mob ID` INT NOT NULL
);

DESCRIBE `POTION AFFECT`;
-- end of Ka Hin 

-- --------------------------------malachi 3/1------------------------------------

-- CREATE TABLE `WEAPON`(
--     `WeaponID` INT PRIMARY KEY UNIQUE NOT NULL ,
--     `Name` VARCHAR( 'Wooden Shovel', 'Stone Shovel', 'Iron Shovel', 'Gold Shovel', 'Diamond Shovel', 'Netherite Shovel'
--                     'Wooden Hoe', 'Stone Hoe', 'Iron Hoe', 'Gold Hoe', 'Diamond Hoe', 'Netherite Hoe'
--                     'Wooden Sword', 'Stone Sword', 'Iron Sword', 'Gold Sword', 'Diamond Sword', 'Netherite Sword'
--                     'Wooden Axe', 'Stone Axe', 'Iron Axe', 'Gold Axe', 'Diamond Axe', 'Netherite Axe'
--                     'Wooden Pickaxe', 'Stone Pickaxe', 'Iron Pickaxe', 'Gold Pickaxe', 'Diamond Pickaxe', 'Netherite Pickaxe'
--                     ) UNIQUE NOT NULL,
-- 	`MaterialType` VARCHAR('Wooden', 'Stone', 'Iron', 'Gold', 'Diamond', 'Netherite') NOT NULL,
--     `WeaponType` VARCHAR('Shovel', 'Hoe', 'Sword', 'Axe', 'Pickaxe') NOT NULL,
--     `WeaponRecipe` RECIPE
--     `durability` INT  NOT NULL,
--     `knockback` INT NOT NULL,
--     `base damage` INT NOT NULL,
--     `reload time` INT NOT NULL,
-- );

-- CREATE TABLE `Material`(
--     `MaterialID` INT PRIMARY KEY NOT NULL,
--     `Name` VARCHAR(`*EMPTY*`, `Stick`, `Oak Plank`, `Cobblestone`, `Iron Ingot`, `Gold Ingot`, `Diamond`, `Netherite Ingot`, `String`)
-- );

-- CREATE TABLE `Recipe`(
--     `RecipeID` INT PRIMARY KEY UNIQUE NOT NULL --takes in reference key from `WEAPON` how?
--     `Material1` VARCHAR(Material.MaterialID)    -- is set to be a materialID 
--     `Material2` VARCHAR(Material.MaterialID)
--     `Material3` VARCHAR(Material.MaterialID)
--     `Material4` VARCHAR(Material.MaterialID)
--     `Material5` VARCHAR(Material.MaterialID)
--     `Material6` VARCHAR(Material.MaterialID)
--     `Material7` VARCHAR(Material.MaterialID)
--     `Material8` VARCHAR(Material.MaterialID)
--     `Material9` VARCHAR(Material.MaterialID)
-- );

-- -------------------------------- end of malachi ------------------------------------
-- Kris
CREATE TABLE ENCHANTMENT (
    ENCHANTMENT_ID int UNIQUE PRIMARY KEY,
    ENCHANTMENT_TYPE varchar(6) CHECK (ENCHANTMENT_TYPE = 'Armor' OR                                                                                                        
    ENCHANTMENT_TYPE = 'Weapon'),
    REGULAR_PROT int CHECK (REGULAR_PROT <= 4 AND REGULAR_PROT >= 0),
    BLAST_PROT int CHECK (BLAST_PROT <= 4 AND BLAST_PROT >= 0),
    KNOCKBACK_INC int CHECK (KNOCKBACK_INC <= 4 AND KNOCKBACK_INC >= 0),
    projProt int CHECK (projProt <= 4 AND projProt >= 0),
    fireProt int CHECK (fireProt <= 4 AND fireProt >= 0),
    feather_fall int CHECK (feather_fall <= 4 AND feather_fall >= 0),
    SHARPNESS int CHECK (SHARPNESS <= 5 AND SHARPNESS >= 0),
    fireAsp int CHECK (fireAsp <= 2 AND fireAsp >= 0),
    SMITE int CHECK (SMITE <= 4 AND SMITE >= 0),
    baneOfA int CHECK (baneOfA <= 5 AND baneOfA >= 0),
    KNOCKBACK int CHECK (KNOCKBACK <= 4 AND KNOCKBACK >= 0),
    SWEEP_EDGE int CHECK (SWEEP_EDGE <= 4 AND SWEEP_EDGE >= 0),
    POWER_ench int CHECK (POWER_ench <= 5 AND POWER_ench >= 0),
    MULTISHOOT bool,
    PIERCING int CHECK (PIERCING <= 4 AND PIERCING >= 0),
    PUNCH int CHECK (PUNCH <= 2 AND PUNCH >= 0),
    QUICK_CHARGE int CHECK (QUICK_CHARGE <= 3 AND QUICK_CHARGE >= 0),
    FLAME bool,
    IMAPLING bool,
    RIPTIDE int CHECK (RIPTIDE <= 3 AND RIPTIDE >= 0)
);


DESCRIBE ENCHANTMENT;


INSERT into ENCHANTMENT values (1,"Armor",1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

-------------------------------- end of Kris ----------------------------------
DROP DATABASE `MINECRAFT`;




