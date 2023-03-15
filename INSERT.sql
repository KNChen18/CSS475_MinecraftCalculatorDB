-- Helmets
INSERT INTO `ARMOR` VALUES( 'leather_helmet',    'Leather Cap',         'Leather',          55, 1, 0.1, 31);
INSERT INTO `ARMOR` VALUES( 'golden_helmet',     'Golden Helmet',       'Gold',             77, 2, 0.1, 32);
INSERT INTO `ARMOR` VALUES( 'chainmail_helmet',  'Chainmail Helmet',    'Chainmail',        165, 2, 0.1, 33);
INSERT INTO `ARMOR` VALUES( 'iron_helmet',       'Iron Helmet',         'Iron',             165, 2, 0.1, 34);
INSERT INTO `ARMOR` VALUES( 'diamond_helmet',    'Diamond Helmet',      'Diamond',          363, 3, 0.1, 35);
INSERT INTO `ARMOR` VALUES( 'netherite_helmet',  'Netherite Helmet',    'Netherite Ingot',  407, 3, 0.1, 36);
INSERT INTO `ARMOR` VALUES( 'turtle_helmet',     'Turtle Shell',        'Scute',            275, 2, 0.1, 55);

-- Chestplate
INSERT INTO `ARMOR` VALUES( 'leather_chestplate',    'Leather Tunic',           'Leather',          80, 3, 0.1, 37);
INSERT INTO `ARMOR` VALUES( 'golden_chestplate',     'Golden Chestplate',       'Gold',             112, 5, 0.1, 38);
INSERT INTO `ARMOR` VALUES( 'chainmail_chestplate',  'Chainmail Chestplate',    'Chainmail',        240, 5, 0.1, 39);
INSERT INTO `ARMOR` VALUES( 'iron_chestplate',       'Iron Chestplate',         'Iron',             240, 6, 0.1, 40);
INSERT INTO `ARMOR` VALUES( 'diamond_chestplate',    'Diamond Chestplate',      'Diamond',          528, 8, 0.1, 41);
INSERT INTO `ARMOR` VALUES( 'netherite_chestplate',  'Netherite Chestplate',    'Netherite Ingot',  592, 8, 0.1, 42);

-- leggings
INSERT INTO `ARMOR` VALUES( 'leather_leggings',  'Leather Pants',     'Leather',                75, 2, 0.1, 43);
INSERT INTO `ARMOR` VALUES( 'golden_leggings',   'Golden Leggings',    'Gold',                  105, 1.5, 0.1,44);
INSERT INTO `ARMOR` VALUES( 'chainmail_leggings',    'Chainmail Leggings',  'Chainmail',        225, 4, 0.1, 45);
INSERT INTO `ARMOR` VALUES( 'iron_leggings',     'Iron Leggings',    'Iron',                    225, 5, 0.1, 46);
INSERT INTO `ARMOR` VALUES( 'diamond_leggings',  'Diamond Leggings',  'Diamond',                495, 6, 0.1, 47);
INSERT INTO `ARMOR` VALUES( 'netherite_leggings',    'Netherite Leggings',  'Netherite Ingot',  555, 6, 0.1, 48);

-- boots
INSERT INTO `ARMOR` VALUES( 'leather_boots',    'Leather Boots',    'Leather',          65, 1, 0.1, 49);
INSERT INTO `ARMOR` VALUES( 'golden_boots',     'Golden Boots',     'Gold',             91, 1, 0.1, 50);
INSERT INTO `ARMOR` VALUES( 'chainmail_boots',  'Chainmail Boots',  'Chainmail',        195, 1, 0.1, 51);
INSERT INTO `ARMOR` VALUES( 'iron_boots',       'Iron Boots',       'Iron',             195, 2, 0.1, 52);
INSERT INTO `ARMOR` VALUES( 'diamond_boots',    'Diamond Boots',    'Diamond',          429,3, 0.1, 53);
INSERT INTO `ARMOR` VALUES( 'netherite_boots',  'Netherite Boots',  'Netherite Ingot',  481, 3, 0.1, 54);

SELECT * FROM `ARMOR`;

INSERT INTO MOB (`NamingID`, `Health`, `Attack Damage`, `Attack Speed`, `Special Abilities`, `Wears Armor`, `Equip Weapons`)
VALUES
('bat', 6, NULL, NULL, NULL, 0, 0),
('bee', 10, 2, NULL, NULL, 0, 0),
('blaze', 20, 6, NULL, NULL, 0, 0),
('cat', 10, 3, NULL, NULL, 0, 0),
('cave_spider', 12, 2, NULL, 'Poison', 0, 0),
('chicken', 4, NULL, NULL, NULL, 0, 0),
('cod', 3, 2, NULL, NULL, 0, 0),
('cow', 10, 2, 'Milk', NULL, 0, 0),
('creeper', 20, 6, 'Explodes', NULL, 0, 0),
('dolphin', 10, 2, 'Graceful swimmer', NULL, 0, 0),
('donkey', 15, 2, 'Can be equipped with chest', NULL, 0, 0),
('drowned', 20, 3, 'Immune to drowning', 1, 1),
('elder_guardian', 80, 8, 'Squirts water', NULL, 0, 0),
('ender_dragon', 200, 12, 'Breathes dragon breath', NULL, 0, 0),
('enderman', 40, 7, 'Teleports', NULL, 0, 0),
('endermite', 8, 2, 'Teleports', NULL, 0, 0),
('evoker', 24, 6, 'Summons vexes', NULL, 0, 0),
('fox', 10, 2, 'Can pick up items', NULL, 0, 0),
('ghast', 10, 5, 'Shoots fireballs', NULL, 0, 0),
('giant', 100, 7, 'Too big to fit in a 2-block tall space', NULL, 0, 0),
('guardian', 30, 6, 'Squirts water', NULL, 0, 0),
('horse', 15, 2, 'Can be equipped with armor', NULL, 0, 0),
('husk', 20, 3, 'Immune to drowning', 1, 1),
('illusioner', 32, 4, 'Creates illusions', 0, 1),
('iron_golem', 100, 7, 'Neutral towards players unless provoked', NULL, 0, 0),
('killer_bunny', 10, 8, 'Deals massive damage', NULL, 0, 0),
('llama', 15, 2, 'Can be equipped with chest', NULL, 0, 0),
('magma_cube', 16, 3, 'Deals fire damage', NULL, 0, 0),
('mooshroom', 10, 2, 'Drops mushrooms', NULL, 0, 0),
('mule', 15, 2, 'Can be equipped with chest', NULL, 0, 0),
('ocelot', 10, 3, 'Can be tamed with fish', NULL, 0, 0),
('panda', 20, 6, 'Rolls and sits', NULL, 0, 0),
('parrot', 6, NULL, NULL, 'Can imitate nearby mobs', NULL, 0, 0),
('phantom', 20, 6, 'Flies through blocks', NULL, 0, 0),
('pig', 10, 2, 'Drops porkchops', NULL, 0, 0),
('piglin', 16, 5, 'Hostile towards players unless wearing gold armor', NULL, 0, 0),
('piglin_brute', 50, 9, 'Immune to knockback', NULL, 0, 0),
('pillager', 24, 6, 'Shoots arrows', NULL, 1, 0),
('player', 20, 2, 2.5, NULL, 0, 0),
('polar_bear', 30, 6, 'Can stand on two legs', NULL, 0, 0),
('pufferfish', 3, 3, NULL, 'Inflates when threatened', NULL, 0, 0),
('rabbit', 3, NULL, NULL, 'Can jump high', NULL, 0, 0),
('ravager', 100, 12, 'Can break blocks', NULL, 0, 0),
('salmon', 3, 2, 'Swims upstream to spawn', NULL, 0, 0),
('sheep', 8, 2, 'Drops wool', NULL, 0, 0),
('shulker', 30, 5, 'Teleports and hides in its shell', NULL, 0, 0),
('silverfish', 8, 1, 'Calls for reinforcements', NULL, 0, 0),
('skeleton', 20, 4, 'Shoots arrows', 1, 1),
('skeleton_horse', 15, 4, 'Can be equipped with armor', NULL, 0, 0),
('slime', 16, 2, 'Splits into smaller slimes', NULL, 0, 0),
('snow_golem', 4, 0, 'Throws snowballs', NULL, 0, 0),
('spider', 16, 2, 'Can climb walls', NULL, 0, 0),
('squid', 10, NULL, NULL, 'Can swim quickly', NULL, 0, 0),
('stray', 20, 4, 'Shoots arrows and slows movement', 1, 1),
('tropical_fish', 3, 1, NULL, 'Comes in many different colors', NULL, 0, 0),
('turtle', 30, NULL, NULL, 'Can be bred with seagrass', NULL, 0, 0),
('vex', 14, 4, 'Phases through blocks', NULL, 0, 0),
('villager', 20, NULL, NULL, 'Can trade with players', 1, 0),
('vindicator', 24, 6, 'Deals high damage', NULL, 1, 0),
('wandering_trader', 20, NULL, NULL, 'Sells rare items', NULL, 0, 0),
('witch', 26, NULL, NULL, 'Throws potions', NULL, 0, 0),
('wither_skeleton', 20, 5, 'Inflicts wither effect on attacks', NULL, 0, 1),
('wolf', 8, 4, 'Can be tamed with bones', NULL, 0, 0),
('zoglin', 40, 6, 'Immune to fire and cannot be bred', NULL, 0, 0),
('zombie', 20, 3, 'Infects villagers and other mobs', NULL, 0, 0),
('zombie_horse', 15, 3, 'Can be equipped with armor', NULL, 0, 0),
('zombie_villager', 20, 3, 'cured with a golden apple and potion of weakness', NULL, 0, 0);

SELECT * FROM MOB;

INSERT INTO `POTION` (Potion_id, name, duration, level, effects)
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

INSERT INTO WEAPON(`WeaponID`, `Name`, `durability`, `knockback`, `base damage`, `reload time`, `WeaponRecipe`) VALUES
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
