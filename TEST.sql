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


-- ----------------------- MOB -------------------------
-- -----------------------------------------------------
INSERT INTO MOB (`NamingID`, `Health`, `Attack Damage`, `Attack Speed`, `Special Abilities`, `Wears Armor`, `Equip Weapons`)
VALUES
('bat', 6, NULL, NULL, NULL, 0, 0),
('bee', 10, 2, NULL, NULL, 0, 0),
('blaze', 20, 6, NULL, NULL, 0, 0),
('cat', 10, 3, NULL, NULL, 0, 0),
('cave_spider', 12, 2, NULL, 'Poison', 0, 0),
('chicken', 4, NULL, NULL, NULL, 0, 0),
('cod', 3, 2, NULL, NULL, 0, 0),
('cow', 10, 2, NULL, 'Milk', 0, 0),
('creeper', 20, 6, NULL, 'Explodes', 0, 0),
('dolphin', 10, 2, NULL, 'Graceful swimmer', 0, 0),
('donkey', 15, 2, NULL, 'Can be equipped with chest', 0, 0),
('drowned', 20, 3, NULL, 'Immune to drowning', 1, 1),
('elder_guardian', 80, 8, NULL, 'Squirts water', 0, 0),
('ender_dragon', 200, 12, NULL, 'Breathes dragon breath', 0, 0),
('enderman', 40, 7, NULL, 'Teleports', 0, 0),
('endermite', 8, 2, NULL, 'Teleports', 0, 0),
('evoker', 24, 6, NULL, 'Summons vexes', 0, 0),
('fox', 10, 2, NULL, 'Can pick up items', 0, 0),
('ghast', 10, 5, NULL, 'Shoots fireballs', 0, 0),
('giant', 100, 7, NULL, 'Too big to fit in a 2-block tall space', 0, 0),
('guardian', 30, 6, NULL, 'Squirts water', 0, 0),
('horse', 15, 2, NULL, 'Can be equipped with armor', 0, 0),
('husk', 20, 3, NULL, 'Immune to drowning', 1, 1),
('illusioner', 32, 4, NULL, 'Creates illusions', 0, 1),
('iron_golem', 100, 7, NULL, 'Neutral towards players unless provoked', 0, 0),
('killer_bunny', 10, 8, NULL, 'Deals massive damage', 0, 0),
('llama', 15, 2, NULL, 'Can be equipped with chest', 0, 0),
('magma_cube', 16, 3, NULL, 'Deals fire damage', 0, 0),
('mooshroom', 10, 2, NULL, 'Drops mushrooms', 0, 0),
('mule', 15, 2, NULL, 'Can be equipped with chest', 0, 0),
('ocelot', 10, 3, NULL, 'Can be tamed with fish', 0, 0),
('panda', 20, 6, NULL, 'Rolls and sits', 0, 0),
('parrot', 6, NULL, NULL, 'Can imitate nearby mobs', 0, 0),
('phantom', 20, 6, NULL, 'Flies through blocks', 0, 0),
('pig', 10, 2, NULL, 'Drops porkchops', 0, 0),
('piglin', 16, 5, NULL, 'Hostile towards players unless wearing gold armor', 0, 0),
('piglin_brute', 50, 9, NULL, 'Immune to knockback', 0, 0),
('pillager', 24, 6, NULL, 'Shoots arrows', 0, 1),
('player', 20, 2, 2.5, NULL, 0, 0),
('polar_bear', 30, 6, NULL, 'Can stand on two legs', 0, 0),
('pufferfish', 3, 3, NULL, 'Inflates when threatened', 0, 0),
('rabbit', 3, NULL, NULL, 'Can jump high', 0, 0),
('ravager', 100, 12, NULL, 'Can break blocks', 0, 0),
('salmon', 3, 2, NULL, 'Swims upstream to spawn', 0, 0),
('sheep', 8, 2, NULL, 'Drops wool', 0, 0),
('shulker', 30, 5, NULL, 'Teleports and hides in its shell', 0, 0),
('silverfish', 8, 1, NULL, 'Calls for reinforcements', 0, 0),
('skeleton', 20, 4, NULL, 'Shoots arrows', 1, 1),
('skeleton_horse', 15, 4, NULL, 'Can be equipped with armor', 0, 0),
('slime', 16, 2, NULL, 'Splits into smaller slimes', 0, 0),
('snow_golem', 4, 0, NULL, 'Throws snowballs', 0, 0),
('spider', 16, 2, NULL, 'Can climb walls', 0, 0),
('squid', 10, NULL, NULL, 'Can swim quickly', 0, 0),
('stray', 20, 4, NULL, 'Shoots arrows and slows movement', 1, 1),
('tropical_fish', 3, 1, NULL, 'Comes in many different colors', 0, 0),
('turtle', 30, NULL, NULL, 'Can be bred with seagrass', 0, 0),
('vex', 14, 4, NULL, 'Phases through blocks', 0, 0),
('villager', 20, NULL, NULL, 'Can trade with players', 1, 0),
('vindicator', 24, 6, NULL, 'Deals high damage', 0, 1),
('wandering_trader', 20, NULL, NULL, 'Sells rare items', 0, 0),
('witch', 26, NULL, NULL, 'Throws potions', 0, 0),
('wither', 300, 12, NULL, 'Summons wither skeletons and shoots wither skulls', 0, 0),
('wither_skeleton', 20, 5, NULL, 'Inflicts wither effect on attacks', 0, 1),
('wolf', 8, 4, NULL, 'Can be tamed with bones', 0, 0),
('zoglin', 40, 6, NULL, 'Immune to fire and cannot be bred', 0, 0),
('zombie', 20, 3, NULL, 'Infects villagers and other mobs', 0, 0),
('zombie_horse', 15, 3, NULL, 'Can be equipped with armor', 0, 0),
('zombie_villager', 20, 3, NULL, 'cured with a golden apple and potion of weakness', 0, 0);

SELECT * FROM MOB;
-- ---------------------- ARMOR ------------------------
-- -----------------------------------------------------
-- Helmets
INSERT INTO `ARMOR` VALUES( 'leather_helmet','Leather',          55, 1, 0.1, 31);
INSERT INTO `ARMOR` VALUES( 'golden_helmet','Gold',             77, 2, 0.1, 32);
INSERT INTO `ARMOR` VALUES( 'chainmail_helmet', 'Chainmail',        165, 2, 0.1, 33);
INSERT INTO `ARMOR` VALUES( 'iron_helmet', 'Iron',             165, 2, 0.1, 34);
INSERT INTO `ARMOR` VALUES( 'diamond_helmet', 'Diamond',          363, 3, 0.1, 35);
INSERT INTO `ARMOR` VALUES( 'netherite_helmet', 'Netherite Ingot',  407, 3, 0.1, 36);
INSERT INTO `ARMOR` VALUES( 'turtle_helmet', 'Scute',            275, 2, 0.1, 55);

-- Chestplate
INSERT INTO `ARMOR` VALUES( 'leather_chestplate',    'Leather',          80, 3, 0.1, 37);
INSERT INTO `ARMOR` VALUES( 'golden_chestplate',     'Gold',             112, 5, 0.1, 38);
INSERT INTO `ARMOR` VALUES( 'chainmail_chestplate',  'Chainmail',        240, 5, 0.1, 39);
INSERT INTO `ARMOR` VALUES( 'iron_chestplate',       'Iron',             240, 6, 0.1, 40);
INSERT INTO `ARMOR` VALUES( 'diamond_chestplate',    'Diamond',          528, 8, 0.1, 41);
INSERT INTO `ARMOR` VALUES( 'netherite_chestplate',  'Netherite Ingot',  592, 8, 0.1, 42);

-- leggings
INSERT INTO `ARMOR` VALUES( 'leather_leggings',     'Leather',                75, 2, 0.1, 43);
INSERT INTO `ARMOR` VALUES( 'golden_leggings',      'Gold',                  105, 1.5, 0.1,44);
INSERT INTO `ARMOR` VALUES( 'chainmail_leggings',   'Chainmail',        225, 4, 0.1, 45);
INSERT INTO `ARMOR` VALUES( 'iron_leggings',        'Iron',                    225, 5, 0.1, 46);
INSERT INTO `ARMOR` VALUES( 'diamond_leggings',     'Diamond',                495, 6, 0.1, 47);
INSERT INTO `ARMOR` VALUES( 'netherite_leggings',   'Netherite Ingot',  555, 6, 0.1, 48);

-- boots
INSERT INTO `ARMOR` VALUES( 'leather_boots',        'Leather',          65, 1, 0.1, 49);
INSERT INTO `ARMOR` VALUES( 'golden_boots',         'Gold',             91, 1, 0.1, 50);
INSERT INTO `ARMOR` VALUES( 'chainmail_boots',      'Chainmail',        195, 1, 0.1, 51);
INSERT INTO `ARMOR` VALUES( 'iron_boots',           'Iron',             195, 2, 0.1, 52);
INSERT INTO `ARMOR` VALUES( 'diamond_boots',         'Diamond',          429,3, 0.1, 53);
INSERT INTO `ARMOR` VALUES( 'netherite_boots',      'Netherite Ingot',  481, 3, 0.1, 54);

-- --------------------- WEAPON ------------------------
-- -----------------------------------------------------
INSERT INTO WEAPON(`WeaponID`, `Name`, `durability`, `knockback`, `base damage`, `reload time`, `RecipeID`) VALUES
-- -- Wooden
( 1, 'Wooden Shovel',     60,   1, 2.5, 1,     1),
( 2, 'Wooden Sword',      60,   1, 4,   1.6,   2),
( 3, 'Wooden Hoe',        60,   1, 1,   1,     3),
( 4, 'Wooden Axe',        60,   1, 7,   0.8,   4),
( 5, 'Wooden Pickaxe',    60,   1, 2,   1.2,   5),
-- Stone
( 6, 'Stone Shovel',      132,  1, 3.5, 1,     6),
( 7, 'Stone Sword',       132,  1, 5,   1.6,   7),
( 8, 'Stone Hoe',         132,  1, 1,   2,     8),
( 9, 'Stone Axe',         132,  1, 9,   0.8,   9),
(10, 'Stone Pickaxe',     132,  1, 3,   1.2,  10),
-- Iron
(11, 'Iron Shovel',       251,  1, 4.5, 1,    11),
(12, 'Iron Sword',        251,  1, 6,   1.6,  12),
(13, 'Iron Hoe',          251,  1, 1,   3,    13),
(14, 'Iron Axe',          251,  1, 9,   0.9,  14),
(15, 'Iron Pickaxe',      251,  1, 4,   1.2,  15),
-- Gold
(16, 'Gold Shovel',       33,   1, 2.5, 1,    16),
(17, 'Gold Sword',        33,   1, 4,   1.6,  17),
(18, 'Gold Hoe',          33,   1, 1,   1,    18),
(19, 'Gold Axe',          33,   1, 7,   1,    19),
(20, 'Gold Pickaxe',      33,   1, 2,   1.2,  20),
-- Diamond
(21, 'Diamond Shovel',    1562, 1, 5.5, 1,    21),
(22, 'Diamond Sword',     1562, 1, 7,   1.6,  22),
(23, 'Diamond Hoe',       1562, 1, 1,   4,    23),
(24, 'Diamond Axe',       1562, 1, 9,   1,    24),
(25, 'Diamond Pickaxe',   1562, 1, 6,   1.2,  30);

-- -------------------- MATERIAL -----------------------
-- -----------------------------------------------------
INSERT INTO Material(`MaterialId`, `Name`) VALUES
(0, '*EMPTY*'), 
(1, 'Stick'),
(2, 'Oak Plank'),
(3, 'Cobblestone'),
(4, 'Iron Ingot'),
(5, 'Gold Ingot'),
(6, 'Diamond'),
(7, 'Netherite Ingot'),
(8, 'Diamond Shovel'), 
(9, 'Diamond Hoe'),
(10, 'Diamond Sword'),
(11, 'Diamond Axe'),
(12, 'Diamond Pickaxe'),
(13, 'Diamond Helmet'),
(14, 'Diamond Chestplate'),
(15, 'Diamond Leggings'),
(16, 'Diamond Boots'),
(17, 'Leather'),
(18, 'Scute');

-- --------------------- RECIPE ------------------------
-- -----------------------------------------------------
INSERT INTO `Recipe`(`RecipeID`,                       `Material1`, `Material2`, `Material3`,
                                                        `Material4`, `Material5`, `Material6`,
                                                        `Material7`, `Material8`, `Material9`)
VALUES
-- Wooden
(1,      0, 2, 0,    0, 1, 0,     0, 1, 0),
(2,      0, 2, 0,    0, 2, 0,     0, 1, 0),
(3,      2, 2, 0,    0, 1, 0,     0, 1, 0),
(4,      2, 2, 0,    2, 1, 0,     0, 1, 0),
(5,      2, 2, 2,    0, 1, 0,     0, 1, 0),
-- Stone
(6,      0, 3, 0,    0, 1, 0,     0, 1, 0),
(7,      0, 3, 0,    0, 3, 0,     0, 1, 0),
(8,      3, 3, 0,    0, 1, 0,     0, 1, 0),
(9,      3, 3, 0,    3, 1, 0,     0, 1, 0),
(10,     3, 3, 3,    0, 1, 0,     0, 1, 0),
-- Iron
(11,     0, 4, 0,    0, 1, 0,     0, 1, 0),
(12,     0, 4, 0,    0, 4, 0,     0, 1, 0),
(13,     4, 4, 0,    0, 1, 0,     0, 1, 0),
(14,     4, 4, 0,    4, 1, 0,     0, 1, 0),
(15,     4, 4, 4,    0, 1, 0,     0, 1, 0),
-- Gold
(16,     0, 5, 0,    0, 1, 0,     0, 1, 0),
(17,     0, 5, 0,    0, 5, 0,     0, 1, 0),
(18,     5, 5, 0,    0, 1, 0,     0, 1, 0),
(19,     5, 5, 0,    5, 1, 0,     0, 1, 0),
(20,     5, 5, 5,    0, 1, 0,     0, 1, 0),
-- Diamond
(21,     0, 6, 0,    0, 1, 0,     0, 1, 0),
(22,     0, 6, 0,    0, 6, 0,     0, 1, 0),
(23,     6, 6, 0,    0, 1, 0,     0, 1, 0),
(24,     6, 6, 0,    6, 1, 0,     0, 1, 0),
(25,     6, 6, 6,    0, 1, 0,     0, 1, 0),
-- Netherite    (combs diamond tool with a netherite ingot)
(26,     7, 8, 0,    0, 0, 0,     0, 0, 0),
(27,     7, 9, 0,    0, 0, 0,     0, 0, 0),
(28,     7, 10, 0,   0, 0, 0,     0, 0, 0),
(29,     7, 11, 0,   0, 0, 0,     0, 0, 0),
(30,     7, 12, 0,   0, 0, 0,     0, 0, 0),
-- Armor

-- helmets
(31,     17, 17, 17,  17, 0, 17,   0, 0, 0),     -- leather
(32,     5, 5, 5,     5, 0, 5,     0, 0, 0),     -- gold
(33,     0, 0, 0,     0, 0, 0,     0, 0, 0),     -- chainmail
(34,     4, 4, 4,     4, 0, 4,     0, 0, 0),     -- iron
(35,     6, 6, 6,     6, 0, 6,     0, 0, 0),     -- diamond
(36,     7, 13, 0,    0, 0, 0,     0, 0, 0),     -- netherite
-- chestplates
(37,     17, 0, 17,   17, 17, 17, 17, 17, 17),   -- leather
(38,     5, 0, 5,     5, 5, 5,    5, 5, 5),      -- gold
(39,     0, 0, 0,     0, 0, 0,    0, 0, 0),      -- chainmail
(40,     4, 0, 4,     4, 4, 4,    4, 4, 4),      -- iron
(41,     6, 0, 6,     6, 6, 6,    6, 6, 6),      -- diamond
(42,     7, 14, 0,    0, 0, 0,    0, 0, 0),      -- netherite
-- leggings
(43,     17, 17, 17,  17, 0, 17,  17, 0, 17),    -- leather
(44,     5, 5, 5,     5, 0, 5,    5, 0, 5),      -- gold
(45,     0, 0, 0,     0, 0, 0,    0, 0, 0),      -- chainmail
(46,     4, 4, 4,     4, 0, 4,    4, 0, 4),      -- iron
(47,     6, 6, 6,     6, 0, 6,    6, 0, 6),      -- diamond
(48,     7, 15, 0,   0, 0, 0,     0, 0, 0),      -- netherite
-- boots
(49,    0, 0, 0,     17, 0, 17,   17, 0, 17),    -- leather
(50,    0, 0, 0,     5, 0, 5,     5, 0, 5),      -- gold
(51,    0, 0, 0,     0, 0, 0,     0, 0, 0),      -- chainmail
(52,    0, 0, 0,     4, 0, 4,     4, 0, 4),      -- iron
(53,    0, 0, 0,     6, 0, 6,     6, 0, 6),      -- diamond
(54,     7, 16, 0,   0, 0, 0,     0, 0, 0),      -- netherite
-- extra
(55,   18, 18, 18,     18, 0, 18,     0, 0, 0); -- turtle helmet

-- --------------------- POTION ------------------------
-- -----------------------------------------------------
INSERT INTO `POTION` (Potion_id, duration, level, effects)
VALUES
(1,     45, 'I', 'Restores health over time'),
(2,     180, 'I', 'Increases movement speed'),
(3,     180, 'I', 'Grants immunity to fire and lava'),
(4,     45, 'I', 'Deals damage over time'),
(5,     0, 'I', 'Restores a large amount of health instantly'),
(6,     180, 'I', 'Allows the player to see in the dark'),
(7,     90, 'I', 'Reduces melee damage done by the player'),
(8,     180, 'I', 'Increases melee damage done by the player'),
(9,     90, 'I', 'Reduces movement speed and action speed'),
(10,    180, 'I', 'Increases jump height'),
(11,    0, 'I', 'Deals a large amount of damage instantly'),
(12,    180, 'I', 'Allows the player to breathe underwater'),
(13,    180, 'I', 'Makes the player invisible to others and mobs'),
(14,    22, 'II', 'Restores health over time at a faster rate'),
(15,    90, 'II', 'Greatly increases movement speed'),
(16,    22, 'II', 'Deals more damage over time'),
(17,    0, 'II', 'Restores a larger amount of health instantly'),
(18,    90, 'II', 'Greatly increases melee damage done by the player'),
(19,    90, 'II', 'Greatly increases jump height'),
(20,    120, 'I', 'Restores health over a longer period of time'),
(21,    480, 'I', 'Increases movement speed for a longer period of time'),
(22,    480, 'I', 'Grants immunity to fire and lava for a longer period of time'),
(23,    120, 'I', 'Deals damage over time for a longer period of time'),
(24,    480, 'I', 'Allows the player to see in the dark for a longer period of time'),
(25,    240, 'I', 'Reduces melee damage done by the player for a longer period of time'),
(26,    480, 'I', 'Increases melee damage done by the player for a longer period of time'),
(27,    240, 'I', 'Reduces movement speed and action speed for a longer period of time'),
(28,    480, 'I', 'Increases jump height for a longer time'),
(29,    480, 'I', 'Allows breathing underwater for longer time'),
(30,    480, 'I', 'Makes player invisible for longer time'),
(31,    11, 'II', 'Faster health regeneration for longer time'),
(32,    240, 'II', 'Increases movement speed for longer time'),
(33,    11, 'II', 'Deals more damage over time'),
(34,    0, 'II', 'Restores more health for longer time'),
(35,    240, 'II', 'Increases melee damage over time'),
(36,    240, 'II', 'Increases jump height for longer time');

-- ------------------ ENCHATMENTS ----------------------
-- -----------------------------------------------------
INSERT INTO `ENCHANTMENTS`(`ENCHANTMENT_ID`, `ENCHANTMENT_TYPE`, `ENCHANTMENT_NAME`, `STACK_NUM`) VALUES

(001, 'ARMOUR', 'PROTECTION', 'I'),						(002, 'ARMOUR', 'PROTECTION', 'II'), 					(003, 'ARMOUR', 'PROTECTION', 'III'), 					(004, 'ARMOUR', 'PROTECTION', 'IV'),			
(005, 'ARMOUR', 'BLAST_PROTECTION', 'I'),				(006, 'ARMOUR', 'BLAST_PROTECTION', 'II'),				(007, 'ARMOUR', 'BLAST_PROTECTION', 'III'),				(008, 'ARMOUR', 'BLAST_PROTECTION', 'IV'),	
(009, 'ARMOUR', 'PROJECTILE_PROTECTION', 'I'),			(010, 'ARMOUR', 'PROJECTILE_PROTECTION', 'II'),			(011, 'ARMOUR', 'PROJECTILE_PROTECTION', 'III'),		(012, 'ARMOUR', 'PROJECTILE_PROTECTION', 'IV'),	
(013, 'ARMOUR', 'FIRE_PROTECTION', 'I'),				(014, 'ARMOUR', 'FIRE_PROTECTION', 'II'),				(015, 'ARMOUR', 'FIRE_PROTECTION', 'III'),				(016, 'ARMOUR', 'FIRE_PROTECTION', 'IV'),	
(017, 'ARMOUR', 'FEATHER_FALLING', 'I'),				(018, 'ARMOUR', 'FEATHER_FALLING', 'II'),				(019, 'ARMOUR', 'FEATHER_FALLING', 'III'),				(020, 'ARMOUR', 'FEATHER_FALLING', 'IV'),
(021, 'WEAPON', 'SHARPNESS', 'I'),						(022, 'WEAPON', 'SHARPNESS', 'II'),						(023, 'WEAPON', 'SHARPNESS', 'III'),					(024, 'WEAPON', 'SHARPNESS', 'IV'),				
(025, 'WEAPON', 'FIRE_ASPECT', 'I'),					(026, 'WEAPON', 'FIRE_ASPECT', 'II'),		
(027, 'WEAPON', 'SMITE', 'I'),							(028, 'WEAPON', 'SMITE', 'II'),							(029, 'WEAPON', 'SMITE', 'III'),						(030, 'WEAPON', 'SMITE', 'IV'),						(031, 'WEAPON', 'SMITE', 'V'),
(032, 'WEAPON', 'Bane_of_Arthropods', 'I'), 			(033, 'WEAPON', 'Bane_of_Arthropods', 'II'),			(034, 'WEAPON', 'Bane_of_Arthropods', 'III'),			(035, 'WEAPON', 'Bane_of_Arthropods', 'IV'),		(036, 'WEAPON', 'Bane_of_Arthropods', 'V'),	
(037, 'WEAPON', 'KNOCKBACK', 'I'),						(038, 'WEAPON', 'KNOCKBACK', 'II'),	
(039, 'WEAPON', 'SWEEPING_EDGE', 'I'),					(040, 'WEAPON', 'SWEEPING_EDGE', 'II'),					(041, 'WEAPON', 'SWEEPING_EDGE', 'III'),
(042, 'WEAPON', 'POWER', 'I'), 							(043, 'WEAPON', 'POWER', 'II'),							(044, 'WEAPON', 'POWER', 'III'),						(045, 'WEAPON', 'POWER', 'IV'),						(046, 'WEAPON', 'POWER', 'V'),	
(047, 'WEAPON', 'MULTISHOOT', 'I'), 			
(048, 'WEAPON', 'PIERCING', 'I'),						(049, 'WEAPON', 'PIERCING', 'II'),						(050, 'WEAPON', 'PIERCING', 'III'),						(051, 'WEAPON', 'PIERCING', 'IV'),
(052, 'WEAPON', 'PUNCH', 'I'),							(053, 'WEAPON', 'PUNCH', 'II'),		
(054, 'WEAPON', 'QUICK_CHARGE', 'I'),					(055, 'WEAPON', 'QUICK_CHARGE', 'II'),					(056, 'WEAPON', 'QUICK_CHARGE', 'III'),	
(057, 'WEAPON', 'FLAME', 'I'),
(058, 'WEAPON', 'IMPALING', 'I'),						(059, 'WEAPON', 'IMPALING', 'II'),						(060, 'WEAPON', 'IMPALING', 'III'),						(061, 'WEAPON', 'IMPALING', 'IV'),					(062, 'WEAPON', 'IMPALING', 'V'),			
(063, 'WEAPON', 'RIPTIDE', 'I'),						(064, 'WEAPON', 'RIPTIDE', 'II');

