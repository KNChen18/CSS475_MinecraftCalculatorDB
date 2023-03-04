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
`NamingID` VARCHAR(41) PRIMARY KEY UNIQUE NOT NULL,
`Name` VARCHAR ( 40 ) UNIQUE NOT NULL,
`Health` INT NOT NULL,
`Attack Damage` INT,
`Attack Speed` INT,
`Special Abilities` VARCHAR(50), -- temporary set to 50 words
`Total Resistance` INT,
-- `Wears Armor` TINYINT,
-- `Equips Weapon` TINYINT,


-- foreign keys
`Helemts NamingID` VARCHAR(41),
`Chestplate NamingID` VARCHAR(41),
`Leggings NamingID` VARCHAR(41),
`Boots NamingID` VARCHAR(41),
`Weapon NamingID` VARCHAR(41) 
);


INSERT INTO MOB (`NamingID`, `Name`, `Health`, `Attack Damage`, `Attack Speed`, `Special Abilities`, `Total Resistance`, `Helemts NamingID`, `Chestplate NamingID`, `Leggings NamingID`, `Boots NamingID`, `Weapon NamingID`)
VALUES
('bat', 'Bat', 6, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
('bee', 'Bee', 10, 2, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
('blaze', 'Blaze', 20, 6, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
('cat', 'Cat', 10, 3, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
('cave_spider', 'Cave Spider', 12, 2, NULL, 'Poison', 0, NULL, NULL, NULL, NULL, NULL),
('chicken', 'Chicken', 4, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
('cod', 'Cod', 3, 2, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL),
('cow', 'Cow', 10, 2, NULL, 'Milk', 0, NULL, NULL, NULL, NULL, NULL),
('creeper', 'Creeper', 20, 6, NULL, 'Explodes', 0, NULL, NULL, NULL, NULL, NULL),
('dolphin', 'Dolphin', 10, 2, NULL, 'Graceful swimmer', 0, NULL, NULL, NULL, NULL, NULL),
('donkey', 'Donkey', 15, 2, NULL, 'Can be equipped with chest', 0, NULL, NULL, NULL, NULL, NULL),
('drowned', 'Drowned', 20, 3, NULL, 'Immune to drowning', 0, NULL, NULL, NULL, NULL, NULL),
('elder_guardian', 'Elder Guardian', 80, 8, NULL, 'Squirts water', 0, NULL, NULL, NULL, NULL, NULL),
('ender_dragon', 'Ender Dragon', 200, 12, NULL, 'Breathes dragon breath', 0, NULL, NULL, NULL, NULL, NULL),
('enderman', 'Enderman', 40, 7, NULL, 'Teleports', 0, NULL, NULL, NULL, NULL, NULL),
('endermite', 'Endermite', 8, 2, NULL, 'Teleports', 0, NULL, NULL, NULL, NULL, NULL),
('evoker', 'Evoker', 24, 6, NULL, 'Summons vexes', 0, NULL, NULL, NULL, NULL, NULL),
('fox', 'Fox', 10, 2, NULL, 'Can pick up items', 0, NULL, NULL, NULL, NULL, NULL),
('ghast', 'Ghast', 10, 5, NULL, 'Shoots fireballs', 0, NULL, NULL, NULL, NULL, NULL),
('giant', 'Giant', 100, 7, NULL, 'Too big to fit in a 2-block tall space', 0, NULL, NULL, NULL, NULL, NULL),
('guardian', 'Guardian', 30, 6, NULL, 'Squirts water', 0, NULL, NULL, NULL, NULL, NULL),
('horse', 'Horse', 15, 2, NULL, 'Can be equipped with armor', 0, NULL, NULL, NULL, NULL, NULL),
('husk', 'Husk', 20, 3, NULL, 'Immune to drowning', 0, NULL, NULL, NULL, NULL, NULL),
('illusioner', 'Illusioner', 32, 4, NULL, 'Creates illusions', 0, NULL, NULL, NULL, NULL, NULL),
('iron_golem', 'Iron Golem', 100, 7, NULL, 'Neutral towards players unless provoked', 0, NULL, NULL, NULL, NULL, NULL),
('killer_bunny', 'Killer Bunny', 10, 8, NULL, 'Deals massive damage', 0, NULL, NULL, NULL, NULL, NULL),
('llama', 'Llama', 15, 2, NULL, 'Can be equipped with chest', 0, NULL, NULL, NULL, NULL, NULL),
('magma_cube', 'Magma Cube', 16, 3, NULL, 'Deals fire damage', 0, NULL, NULL, NULL, NULL, NULL),
('mooshroom', 'Mooshroom', 10, 2, NULL, 'Drops mushrooms', 0, NULL, NULL, NULL, NULL, NULL),
('mule', 'Mule', 15, 2, NULL, 'Can be equipped with chest', 0, NULL, NULL, NULL, NULL, NULL),
('ocelot', 'Ocelot', 10, 3, NULL, 'Can be tamed with fish', 0, NULL, NULL, NULL, NULL, NULL),
('panda', 'Panda', 20, 6, NULL, 'Rolls and sits', 0, NULL, NULL, NULL, NULL, NULL),
('parrot', 'Parrot', 6, NULL, NULL, 'Can imitate nearby mobs', 0, NULL, NULL, NULL, NULL, NULL),
('phantom', 'Phantom', 20, 6, NULL, 'Flies through blocks', 0, NULL, NULL, NULL, NULL, NULL),
('pig', 'Pig', 10, 2, NULL, 'Drops porkchops', 0, NULL, NULL, NULL, NULL, NULL),
('piglin', 'Piglin', 16, 5, NULL, 'Hostile towards players unless wearing gold armor', 0, NULL, NULL, NULL, NULL, NULL),
('piglin_brute', 'Piglin Brute', 50, 9, NULL, 'Immune to knockback', 0, NULL, NULL, NULL, NULL, NULL),
('pillager', 'Pillager', 24, 6, NULL, 'Shoots arrows', 0, NULL, NULL, NULL, NULL, NULL),
('polar_bear', 'Polar Bear', 30, 6, NULL, 'Can stand on two legs', 0, NULL, NULL, NULL, NULL, NULL),
('pufferfish', 'Pufferfish', 3, 3, NULL, 'Inflates when threatened', 0, NULL, NULL, NULL, NULL, NULL),
('rabbit', 'Rabbit', 3, NULL, NULL, 'Can jump high', 0, NULL, NULL, NULL, NULL, NULL),
('ravager', 'Ravager', 100, 12, NULL, 'Can break blocks', 0, NULL, NULL, NULL, NULL, NULL),
('salmon', 'Salmon', 3, 2, NULL, 'Swims upstream to spawn', 0, NULL, NULL, NULL, NULL, NULL),
('sheep', 'Sheep', 8, 2, NULL, 'Drops wool', 0, NULL, NULL, NULL, NULL, NULL),
('shulker', 'Shulker', 30, 5, NULL, 'Teleports and hides in its shell', 0, NULL, NULL, NULL, NULL, NULL),
('silverfish', 'Silverfish', 8, 1, NULL, 'Calls for reinforcements', 0, NULL, NULL, NULL, NULL, NULL),
('skeleton', 'Skeleton', 20, 4, NULL, 'Shoots arrows', 0, NULL, NULL, NULL, NULL, NULL),
('skeleton_horse', 'Skeleton Horse', 15, 4, NULL, 'Can be equipped with armor', 0, NULL, NULL, NULL, NULL, NULL),
('slime', 'Slime', 16, 2, NULL, 'Splits into smaller slimes', 0, NULL, NULL, NULL, NULL, NULL),
('snow_golem', 'Snow Golem', 4, 0, NULL, 'Throws snowballs', 0, NULL, NULL, NULL, NULL, NULL),
('spider', 'Spider', 16, 2, NULL, 'Can climb walls', 0, NULL, NULL, NULL, NULL, NULL),
('squid', 'Squid', 10, NULL, NULL, 'Can swim quickly', 0, NULL, NULL, NULL, NULL, NULL),
('stray', 'Stray', 20, 4, NULL, 'Shoots arrows and slows movement', 0, NULL, NULL, NULL, NULL, NULL),
('tropical_fish', 'Tropical Fish', 3, 1, NULL, 'Comes in many different colors', 0, NULL, NULL, NULL, NULL, NULL),
('turtle', 'Turtle', 30, NULL, NULL, 'Can be bred with seagrass', 0, NULL, NULL, NULL, NULL, NULL),
('vex', 'Vex', 14, 4, NULL, 'Phases through blocks', 0, NULL, NULL, NULL, NULL, NULL),
('villager', 'Villager', 20, NULL, NULL, 'Can trade with players', 0, NULL, NULL, NULL, NULL, NULL),
('vindicator', 'Vindicator', 24, 6, NULL, 'Deals high damage', 0, NULL, NULL, NULL, NULL, NULL),
('wandering_trader', 'Wandering Trader', 20, NULL, NULL, 'Sells rare items', 0, NULL, NULL, NULL, NULL, NULL),
('witch', 'Witch', 26, NULL, NULL, 'Throws potions', 0, NULL, NULL, NULL, NULL, NULL),
('wither', 'Wither', 300, 12, NULL, 'Summons wither skeletons and shoots wither skulls', 0, NULL, NULL, NULL, NULL, NULL),
('wither_skeleton', 'Wither Skeleton', 20, 5, NULL, 'Inflicts wither effect on attacks', 0, NULL, NULL, NULL, NULL, NULL),
('wolf', 'Wolf', 8, 4, NULL, 'Can be tamed with bones', 0, NULL, NULL, NULL, NULL, NULL),
('zoglin', 'Zoglin', 40, 6, NULL, 'Immune to fire and cannot be bred', 0, NULL, NULL, NULL, NULL, NULL),
('zombie', 'Zombie', 20, 3, NULL, 'Infects villagers and other mobs', 0, NULL, NULL, NULL, NULL, NULL),
('zombie_horse', 'Zombie Horse', 15, 3, NULL, 'Can be equipped with armor', 0, NULL, NULL, NULL, NULL, NULL),
('zombie_villager', 'Zombie Villager', 20, 3, NULL, 'cured with a golden apple and potion of weakness', 0, NULL, NULL, NULL, NULL, NULL);

-- Note: The values for 'Attack Damage' and 'Attack Speed' are set to NULL for certain mobs
-- because they don't have a consistent attack pattern or damage value. Some mobs have special
-- abilities instead that make them unique.

SELECT * FROM `MOB`;
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

-- ------------------------------malachi3/1------------------------------------
CREATE TABLE `WEAPON`(
    `WeaponID` INT PRIMARY KEY UNIQUE NOT NULL ,
    `Name` VARCHAR(50) UNIQUE NOT NULL,
    CONSTRAINT chk_weapon_name CHECK ( `Name` IN ( 'Wooden Shovel', 'Stone Shovel', 'Iron Shovel', 'Gold Shovel', 'Diamond Shovel', 'Netherite Shovel'
                    'Wooden Hoe', 'Stone Hoe', 'Iron Hoe', 'Gold Hoe', 'Diamond Hoe', 'Netherite Hoe'
                    'Wooden Sword', 'Stone Sword', 'Iron Sword', 'Gold Sword', 'Diamond Sword', 'Netherite Sword'
                    'Wooden Axe', 'Stone Axe', 'Iron Axe', 'Gold Axe', 'Diamond Axe', 'Netherite Axe'
                    'Wooden Pickaxe', 'Stone Pickaxe', 'Iron Pickaxe', 'Gold Pickaxe', 'Diamond Pickaxe', 'Netherite Pickaxe'
                    )) ,
    `MaterialType` VARCHAR(10) NOT NULL,
    CONSTRAINT chk_Material_Type CHECK ( `MaterialType` IN ('Wooden', 'Stone', 'Iron', 'Gold', 'Diamond', 'Netherite')),
    `WeaponType` VARCHAR(10) NOT NULL,
    CONSTRAINT chk_Weapon_Type CHECK ( `WeaponType` IN ('Shovel', 'Hoe', 'Sword', 'Axe', 'Pickaxe')),
    -- `WeaponRecipe` RECIPE
    `durability` INT  NOT NULL,
    `knockback` INT NOT NULL,
    `base damage` INT NOT NULL,
    `reload time` INT NOT NULL
);

-- INSERT INTO WEAPON VALUES ()

CREATE TABLE `Material`(
    `MaterialID` INT PRIMARY KEY NOT NULL,
    `Name` VARCHAR(41) CHECK( `Name` IN ('*EMPTY*', 'Stick', 'Oak Plank', 'Cobblestone',
    'Iron Ingot', 'Gold Ingot', 'Diamond', 'Netherite Ingot', 'String'))
);

CREATE TABLE `Recipe`(
    `RecipeID` INT PRIMARY KEY UNIQUE NOT NULL, -- takes in reference key from `WEAPON` how?
    `Material1` VARCHAR(41),    -- is set to be a materialID
    `Material2` VARCHAR(41),
    `Material3` VARCHAR(41),
    `Material4` VARCHAR(41),
    `Material5` VARCHAR(41),
    `Material6` VARCHAR(41),
    `Material7` VARCHAR(41),
    `Material8` VARCHAR(41),
    `Material9` VARCHAR(41)
);
-- --------------------------- end of malachi -------------------------------
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
-- ---------------------------- end of Kris --------------------------------
DROP DATABASE `MINECRAFT`;
