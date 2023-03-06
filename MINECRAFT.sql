SHOW DATABASES;
CREATE DATABASE `MINECRAFT`;
SHOW DATABASES;


USE `MINECRAFT`;


-- DROP TABLE ARMOR;
-- DROP TABLE MOB;


-- Ka Hin
-- Note: It is just initalizing my part
CREATE TABLE ARMOR(
   `NamingID` VARCHAR(41) PRIMARY KEY UNIQUE NOT NULL ,
   `Name` VARCHAR(41) UNIQUE NOT NULL,
   `Material Type` VARCHAR(41) NOT NULL,
   `Durability` INT NOT NULL,
   `Defense Points` FLOAT,
   `Knockback Resistance` FLOAT
);


-- Helmets
INSERT INTO ARMOR VALUES( 'leather_helmet', 'Leather Cap', 'Leather', 55, 1, 0.1);
INSERT INTO ARMOR VALUES( 'golden_helmet', 'Golden Helmet', 'Gold', 77, 2, 0.1);
INSERT INTO ARMOR VALUES( 'chainmail_helmet', 'Chainmail Helmet', 'Chainmail', 165, 2, 0.1);
INSERT INTO ARMOR VALUES( 'iron_helmet', 'Iron Helmet', 'Iron', 165, 2, 0.1);
INSERT INTO ARMOR VALUES( 'diamond_helmet', 'Diamond Helmet', 'Diamond', 363, 3, 0.1);
INSERT INTO ARMOR VALUES( 'netherite_helmet', 'Netherite Helmet', 'Netherite Ingot', 407, 3, 0.1);
INSERT INTO ARMOR VALUES( 'turtle_helmet', 'Turtle Shell', 'Scute', 275, 2, 0.1);




-- Chestplate
INSERT INTO ARMOR VALUES( 'leather_chestplate', 'Leather Tunic', 'Leather', 80, 3, 0.1);
INSERT INTO ARMOR VALUES( 'golden_chestplate', 'Golden Chestplate', 'Gold', 112, 5, 0.1);
INSERT INTO ARMOR VALUES( 'chainmail_chestplate', 'Chainmail Chestplate', 'Chainmail', 240, 5, 0.1);
INSERT INTO ARMOR VALUES( 'iron_chestplate', 'Iron Chestplate', 'Iron', 240, 6, 0.1);
INSERT INTO ARMOR VALUES( 'diamond_chestplate', 'Diamond Chestplate', 'Diamond', 528, 8, 0.1);
INSERT INTO ARMOR VALUES( 'netherite_chestplate', 'Netherite Chestplate', 'Netherite Ingot', 592, 8, 0.1);




-- leggings
INSERT INTO ARMOR VALUES( 'leather_boots', 'Leather Pants', 'Leather', 75, 2, 0.1);
INSERT INTO ARMOR VALUES( 'golden_boots', 'Golden Leggings', 'Gold', 105, 1.5, 0.1);
INSERT INTO ARMOR VALUES( 'chainmail_boots', 'Chainmail Leggings', 'Chainmail', 225, 4, 0.1);
INSERT INTO ARMOR VALUES( 'iron_boots', 'Iron Leggings', 'Iron', 225, 5, 0.1);
INSERT INTO ARMOR VALUES( 'diamond_boots', 'Diamond Leggings', 'Diamond', 495, 6, 0.1);
INSERT INTO ARMOR VALUES( 'netherite_boots', 'Netherite Leggings', 'Netherite Ingot', 555, 6, 0.1);




-- boots
INSERT INTO ARMOR VALUES( 'leather_leggings', 'Leather Boots', 'Leather', 65, 1, 0.1);
INSERT INTO ARMOR VALUES( 'golden_leggings', 'Golden Boots', 'Gold', 91, 1, 0.1);
INSERT INTO ARMOR VALUES( 'chainmail_leggings', 'Chainmail Boots', 'Chainmail', 195, 1, 0.1);
INSERT INTO ARMOR VALUES( 'iron_leggings', 'Iron Boots', 'Iron', 195, 2, 0.1);
INSERT INTO ARMOR VALUES( 'diamond_leggings', 'Diamond Boots', 'Diamond', 429,3, 0.1);
INSERT INTO ARMOR VALUES( 'netherite_leggings', 'Netherite Boots', 'Netherite Ingot', 481, 3, 0.1);


SELECT * FROM ARMOR;

DESCRIBE ARMOR; -- display how we store the ARMOR TABLE

CREATE TABLE MOB(
`NamingID` VARCHAR(41) PRIMARY KEY UNIQUE NOT NULL,
`Name` VARCHAR ( 40 ) UNIQUE NOT NULL,
`Health` INT NOT NULL,
`Attack Damage` INT,
`Attack Speed` INT,
`Special Abilities` VARCHAR(50)
);


INSERT INTO MOB (`NamingID`, `Name`, `Health`, `Attack Damage`, `Attack Speed`, `Special Abilities`)
VALUES
('bat',             'Bat', 6, NULL, NULL, NULL),
('bee',             'Bee', 10, 2, NULL, NULL),
('blaze',           'Blaze', 20, 6, NULL, NULL),
('cat',             'Cat', 10, 3, NULL, NULL),
('cave_spider',     'Cave Spider', 12, 2, NULL, 'Poison'),
('chicken',         'Chicken', 4, NULL, NULL, NULL),
('cod',             'Cod', 3, 2, NULL, NULL),
('cow',             'Cow', 10, 2, NULL, 'Milk'),
('creeper',         'Creeper', 20, 6, NULL, 'Explodes'),
('dolphin',         'Dolphin', 10, 2, NULL, 'Graceful swimmer'),
('donkey',          'Donkey', 15, 2, NULL, 'Can be equipped with chest'),
('drowned',         'Drowned', 20, 3, NULL, 'Immune to drowning'),
('elder_guardian',  'Elder Guardian', 80, 8, NULL, 'Squirts water'),
('ender_dragon',    'Ender Dragon', 200, 12, NULL, 'Breathes dragon breath'),
('enderman',        'Enderman', 40, 7, NULL, 'Teleports'),
('endermite',       'Endermite', 8, 2, NULL, 'Teleports'),
('evoker',          'Evoker', 24, 6, NULL, 'Summons vexes'),
('fox',             'Fox', 10, 2, NULL, 'Can pick up items'),
('ghast',           'Ghast', 10, 5, NULL, 'Shoots fireballs'),
('giant',           'Giant', 100, 7, NULL, 'Too big to fit in a 2-block tall space'),
('guardian',        'Guardian', 30, 6, NULL, 'Squirts water'),
('horse',           'Horse', 15, 2, NULL, 'Can be equipped with armor'),
('husk',            'Husk', 20, 3, NULL, 'Immune to drowning'),
('illusioner',      'Illusioner', 32, 4, NULL, 'Creates illusions'),
('iron_golem',      'Iron Golem', 100, 7, NULL, 'Neutral towards players unless provoked'),
('killer_bunny',    'Killer Bunny', 10, 8, NULL, 'Deals massive damage'),
('llama',           'Llama', 15, 2, NULL, 'Can be equipped with chest'),
('magma_cube',      'Magma Cube', 16, 3, NULL, 'Deals fire damage'),
('mooshroom',       'Mooshroom', 10, 2, NULL, 'Drops mushrooms'),
('mule',            'Mule', 15, 2, NULL, 'Can be equipped with chest'),
('ocelot',          'Ocelot', 10, 3, NULL, 'Can be tamed with fish'),
('panda',           'Panda', 20, 6, NULL, 'Rolls and sits'),
('parrot',          'Parrot', 6, NULL, NULL, 'Can imitate nearby mobs'),
('phantom',         'Phantom', 20, 6, NULL, 'Flies through blocks'),
('pig',             'Pig', 10, 2, NULL, 'Drops porkchops'),
('piglin',          'Piglin', 16, 5, NULL, 'Hostile towards players unless wearing gold armor'),
('piglin_brute',    'Piglin Brute', 50, 9, NULL, 'Immune to knockback'),
('pillager',        'Pillager', 24, 6, NULL, 'Shoots arrows'),
('player',          'Player', 20, 2, 2.5, NULL),
('polar_bear',      'Polar Bear', 30, 6, NULL, 'Can stand on two legs'),
('pufferfish',      'Pufferfish', 3, 3, NULL, 'Inflates when threatened'),
('rabbit',          'Rabbit', 3, NULL, NULL, 'Can jump high'),
('ravager',         'Ravager', 100, 12, NULL, 'Can break blocks'),
('salmon',          'Salmon', 3, 2, NULL, 'Swims upstream to spawn'),
('sheep',           'Sheep', 8, 2, NULL, 'Drops wool'),
('shulker',         'Shulker', 30, 5, NULL, 'Teleports and hides in its shell'),
('silverfish',      'Silverfish', 8, 1, NULL, 'Calls for reinforcements'),
('skeleton',        'Skeleton', 20, 4, NULL, 'Shoots arrows'),
('skeleton_horse',  'Skeleton Horse', 15, 4, NULL, 'Can be equipped with armor'),
('slime',           'Slime', 16, 2, NULL, 'Splits into smaller slimes'),
('snow_golem',      'Snow Golem', 4, 0, NULL, 'Throws snowballs'),
('spider',          'Spider', 16, 2, NULL, 'Can climb walls'),
('squid',           'Squid', 10, NULL, NULL, 'Can swim quickly'),
('stray',           'Stray', 20, 4, NULL, 'Shoots arrows and slows movement'),
('tropical_fish',   'Tropical Fish', 3, 1, NULL, 'Comes in many different colors'),
('turtle',          'Turtle', 30, NULL, NULL, 'Can be bred with seagrass'),
('vex',             'Vex', 14, 4, NULL, 'Phases through blocks'),
('villager',        'Villager', 20, NULL, NULL, 'Can trade with players'),
('vindicator',      'Vindicator', 24, 6, NULL, 'Deals high damage'),
('wandering_trader', 'Wandering Trader', 20, NULL, NULL, 'Sells rare items'),
('witch',           'Witch', 26, NULL, NULL, 'Throws potions'),
('wither',          'Wither', 300, 12, NULL, 'Summons wither skeletons and shoots wither skulls'),
('wither_skeleton', 'Wither Skeleton', 20, 5, NULL, 'Inflicts wither effect on attacks'),
('wolf',            'Wolf', 8, 4, NULL, 'Can be tamed with bones'),
('zoglin',          'Zoglin', 40, 6, NULL, 'Immune to fire and cannot be bred'),
('zombie',          'Zombie', 20, 3, NULL, 'Infects villagers and other mobs'),
('zombie_horse',    'Zombie Horse', 15, 3, NULL, 'Can be equipped with armor'),
('zombie_villager', 'Zombie Villager', 20, 3, NULL, 'cured with a golden apple and potion of weakness');

-- Note: The values for 'Attack Damage' and 'Attack Speed' are set to NULL for certain mobs
-- because they don't have a consistent attack pattern or damage value. Some mobs have special
-- abilities instead that make them unique.

SELECT * FROM MOB;
DESCRIBE MOB; -- display how we store the MOB TABLE

CREATE TABLE POTION (
  `Potion_id` INT NOT NULL UNIQUE PRIMARY KEY,
  `name` VARCHAR(100) NOT NULL,
  `duration` INT NOT NULL,
  `level` VARCHAR(2) NOT NULL CHECK( `level` IN ( 'I','II','III','IV','V' )),
  `effects` VARCHAR(100) NOT NULL
);
DESCRIBE POTION;

INSERT INTO POTION (Potion_id, name, duration, level, effects)
VALUES
(1, 'Potion of Regeneration', 45, 'I', 'Restores health over time'),
(2, 'Potion of Swiftness', 180, 'I', 'Increases movement speed'),
(3, 'Potion of Fire Resistance', 180, 'I', 'Grants immunity to fire and lava'),
(4, 'Potion of Poison', 45, 'I', 'Deals damage over time'),
(5, 'Potion of Healing', 0, 'I', 'Restores a large amount of health instantly'),
(6, 'Potion of Night Vision', 180, 'I', 'Allows the player to see in the dark'),
(7, 'Potion of Weakness', 90, 'I', 'Reduces melee damage done by the player'),
(8, 'Potion of Strength', 180, 'I', 'Increases melee damage done by the player'),
(9, 'Potion of Slowness', 90, 'I', 'Reduces movement speed and action speed'),
(10, 'Potion of Leaping', 180, 'I', 'Increases jump height'),
(11, 'Potion of Harming', 0, 'I', 'Deals a large amount of damage instantly'),
(12, 'Potion of Water Breathing', 180, 'I', 'Allows the player to breathe underwater'),
(13, 'Potion of Invisibility', 180, 'I', 'Makes the player invisible to others and mobs'),
(14, 'Potion of Regeneration II', 22, 'II', 'Restores health over time at a faster rate'),
(15, 'Potion of Swiftness II', 90, 'II', 'Greatly increases movement speed'),
(16, 'Potion of Poison II', 22, 'II', 'Deals more damage over time'),
(17, 'Potion of Healing II', 0, 'II', 'Restores a larger amount of health instantly'),
(18, 'Potion of Strength II', 90, 'II', 'Greatly increases melee damage done by the player'),
(19, 'Potion of Leaping II', 90, 'II', 'Greatly increases jump height'),
(20, 'Potion of Regeneration extended', 120, 'I', 'Restores health over a longer period of time'),
(21, 'Potion of Swiftness extended', 480, 'I', 'Increases movement speed for a longer period of time'),
(22, 'Potion of Fire Resistance extended', 480, 'I', 'Grants immunity to fire and lava for a longer period of time'),
(23, 'Potion of Poison extended', 120, 'I', 'Deals damage over time for a longer period of time'),
(24, 'Potion of Night Vision extended', 480, 'I', 'Allows the player to see in the dark for a longer period of time'),
(25, 'Potion of Weakness extended', 240, 'I', 'Reduces melee damage done by the player for a longer period of time'),
(26, 'Potion of Strength extended', 480, 'I', 'Increases melee damage done by the player for a longer period of time'),
(27, 'Potion of Slowness extended', 240, 'I', 'Reduces movement speed and action speed for a longer period of time'),
(28, 'Potion of Leaping extended', 480, 'I', 'Increases jump height for a longer time'),
(29, 'Potion of Water Breathing extended', 480, 'I', 'Allows breathing underwater for longer time'),
(30, 'Potion of Invisibility extended', 480, 'I', 'Makes player invisible for longer time'),
(31, 'Potion of Regeneration II extended', 11, 'II', 'Faster health regeneration for longer time'),
(32, 'Potion of Swiftness II extended', 240, 'II', 'Increases movement speed for longer time'),
(33, 'Potion of Poison II extended', 11, 'II', 'Deals more damage over time'),
(34, 'Potion of Healing II extended', 0, 'II', 'Restores more health for longer time'),
(35, 'Potion of Strength II extended', 240, 'II', 'Increases melee damage over time'),
(36, 'Potion of Leaping II extended', 240, 'II', 'Increases jump height for longer time');

SELECT * FROM `potion`;

-- CREATE TABLE `POTION AFFECT`(
--     `Potion ID` INT ,
--     `Mob ID` INT NOT NULL
-- );

-- DESCRIBE `POTION AFFECT`;
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
    `durability` INT  NOT NULL,
    `knockback` FLOAT NOT NULL,
    `base damage` FLOAT NOT NULL,
    `reload time` FLOAT NOT NULL,
    `WeaponRecipe` RECIPE NOT NULL
);
DESCRIBE `WEAPON`;

 INSERT INTO WEAPON(`WeaponID`, `Name`, `MaterialType`, `WeaponType`, `durability`, `knockback`, `base damage`, `reload time`, `WeaponRecipe`) VALUES
-- -- Wooden
( 1, 'Wooden Shovel',     'Wooden', 'Shovel',     60,   1, 2.5, 1,     1),
( 2, 'Wooden Sword',      'Wooden', 'Sword',      60,   1, 4,   1.6,   2),
( 3, 'Wooden Hoe',        'Wooden', 'Hoe',        60,   1, 1,   1,     3),
( 4, 'Wooden Axe',        'Wooden', 'Axe',        60,   1, 7,   0.8,   4),
( 5, 'Wooden Pickaxe',    'Wooden', 'Pickaxe',    60,   1, 2,   1.2,   5),
-- Stone
( 6, 'Stone Shovel',      'Stone', 'Shovel',      132,  1, 3.5, 1,     6),
( 7, 'Stone Sword',       'Stone', 'Sword',       132,  1, 5,   1.6,   7),
( 8, 'Stone Hoe',         'Stone', 'Hoe',         132,  1, 1,   2,     8),
( 9, 'Stone Axe',         'Stone', 'Axe',         132,  1, 9,   0.8,   9),
(10, 'Stone Pickaxe',     'Stone', 'Pickaxe',     132,  1, 3,   1.2,  10),
-- Iron
(11, 'Iron Shovel',       'Iron', 'Shovel',       251,  1, 4.5, 1,    11),
(12, 'Iron Sword',        'Iron', 'Sword',        251,  1, 6,   1.6,  12),
(13, 'Iron Hoe',          'Iron', 'Hoe',          251,  1, 1,   3,    13),
(14, 'Iron Axe',          'Iron', 'Axe',          251,  1, 9,   0.9,  14),
(15, 'Iron Pickaxe',      'Iron', 'Pickaxe',      251,  1, 4,   1.2,  15),
-- Gold
(16, 'Gold Shovel',       'Gold', 'Shovel',       33,   1, 2.5, 1,    16),
(17, 'Gold Sword',        'Gold', 'Sword',        33,   1, 4,   1.6,  17),
(18, 'Gold Hoe',          'Gold', 'Hoe',          33,   1, 1,   1,    18),
(19, 'Gold Axe',          'Gold', 'Axe',          33,   1, 7,   1,    19),
(20, 'Gold Pickaxe',      'Gold', 'Pickaxe',      33,   1, 2,   1.2,  20),
-- Diamond
(21, 'Diamond Shovel',    'Diamond', 'Shovel',    1562, 1, 5.5, 1,    21),
(22, 'Diamond Sword',     'Diamond', 'Sword',     1562, 1, 7,   1.6,  22),
(23, 'Diamond Hoe',       'Diamond', 'Hoe',       1562, 1, 1,   4,    23),
(24, 'Diamond Axe',       'Diamond', 'Axe',       1562, 1, 9,   1,    24),
(25, 'Diamond Pickaxe',   'Diamond', 'Pickaxe',   1562, 1, 5,   1.2,  25),
-- Netherite
(26, 'Netherite Shovel',  'Netherite', 'Shovel',  2032, 1, 6.5, 1,    26),
(27, 'Netherite Sword',   'Netherite', 'Sword',   2032, 1, 8,   1.6,  27),
(28, 'Netherite Hoe',     'Netherite', 'Hoe',     2032, 1, 1,   4,    28),
(29, 'Netherite Axe',     'Netherite', 'Axe',     2032, 1, 10,  1,    29),
(30, 'Netherite Pickaxe', 'Netherite', 'Pickaxe', 2032, 1, 6,   1.2,  30);


CREATE TABLE `Material`(
    `MaterialID` INT PRIMARY KEY NOT NULL,
    `Name` VARCHAR(41) CHECK( `Name` IN ('*EMPTY*', 'Stick', 'Oak Plank', 'Cobblestone',
    'Iron Ingot', 'Gold Ingot', 'Diamond', 'Netherite Ingot', 'Shovel', 'Hoe', 'Sword', 
    'Axe', 'Pickaxe'))
);
DESCRIBE `Material`;

INSERT INTO Material(`MaterialId`, `Name`) VALUES
(0, '*EMPTY*'), 
(1, 'Stick'),
(2, 'Oak Plank'),
(3, 'Cobblestone'),
(4, 'Iron Ingot'),
(5, 'Gold Ingot'),
(6, 'Diamond'),
(7, 'Netherite Ingot'),
(8, 'Shovel'),
(9, 'Hoe'),
(10, 'Sword'),
(11, 'Axe'),
(12, 'Pickaxe');

CREATE TABLE `Recipe`(
    `RecipeID` INT PRIMARY KEY UNIQUE NOT NULL, -- recipe ID is the same as namingID of the item being created 
    `Output_NamingID` INT, -- this is foreign key of the output
    `Material1` INT,    -- corresponds to a materialID
    `Material2` INT,
    `Material3` INT,
    `Material4` INT,
    `Material5` INT,
    `Material6` INT,
    `Material7` INT,
    `Material8` INT,
    `Material9` INT
);
DESCRIBE `Recipe`;

-- our assumptions are that a recipe is not what you need to put in the CRAFTING TABLE per se, but just which items and how much of each you need to create that weapon.
-- this is becasue netherite tools are not crafted, but created in a smithing table.

INSERT INTO Recipe(`RecipeID`, `Output_NamingID`,       `Material1`, `Material2`, `Material3`,
                                                        `Material4`, `Material5`, `Material6`,
                                                        `Material7`, `Material8`, `Material9`)
VALUES
-- Wooden
(1, 1,      0, 2, 0,    0, 1, 0,     0, 1, 0),
(2, 2,      0, 2, 0,    0, 2, 0,     0, 1, 0),
(3, 3,      2, 2, 0,    0, 1, 0,     0, 1, 0),
(4, 4,      2, 2, 0,    2, 1, 0,     0, 1, 0),
(5, 5,      2, 2, 2,    0, 1, 0,     0, 1, 0),
-- Stone
(6, 6,      0, 3, 0,    0, 1, 0,     0, 1, 0),
(7, 7,      0, 3, 0,    0, 3, 0,     0, 1, 0),
(8, 8,      3, 3, 0,    0, 1, 0,     0, 1, 0),
(9, 9,      3, 3, 0,    3, 1, 0,     0, 1, 0),
(10, 10,    3, 3, 3,    0, 1, 0,     0, 1, 0),
-- Iron
(11, 11,    0, 4, 0,    0, 1, 0,     0, 1, 0),
(12, 12,    0, 4, 0,    0, 4, 0,     0, 1, 0),
(13, 13,    4, 4, 0,    0, 1, 0,     0, 1, 0),
(14, 14,    4, 4, 0,    4, 1, 0,     0, 1, 0),
(15, 15,    4, 4, 4,    0, 1, 0,     0, 1, 0),
-- Gold
(16, 16,    0, 5, 0,    0, 1, 0,     0, 1, 0),
(17, 17,    0, 5, 0,    0, 5, 0,     0, 1, 0),
(18, 18,    5, 5, 0,    0, 1, 0,     0, 1, 0),
(19, 19,    5, 5, 0,    5, 1, 0,     0, 1, 0),
(20, 20,    5, 5, 5,    0, 1, 0,     0, 1, 0),
-- Diamond
(21, 21,    0, 6, 0,    0, 1, 0,     0, 1, 0),
(22, 22,    0, 6, 0,    0, 6, 0,     0, 1, 0),
(23, 23,    6, 6, 0,    0, 1, 0,     0, 1, 0),
(24, 24,    6, 6, 0,    6, 1, 0,     0, 1, 0),
(25, 25,    6, 6, 6,    0, 1, 0,     0, 1, 0),
-- Netherite    (combines diamond tool with a netherite ingot)
(26, 26,    7, 8, 0,    0, 0, 0,     0, 0, 0),
(27, 27,    7, 9, 0,    0, 0, 0,     0, 0, 0),
(28, 28,    7, 10, 0,   0, 0, 0,     0, 0, 0),
(29, 29,    7, 11, 0,   0, 0, 0,     0, 0, 0),
(30, 30,    7, 12, 0,   0, 0, 0,     0, 0, 0);
-- -------------------------- end of malachi -------------------------------
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