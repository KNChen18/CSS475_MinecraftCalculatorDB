-- Shows mobs that can wear an armor
SELECT *
FROM `MOB`
WHERE `Wears Armor` = 1;

-- Shows all diamond ARMOR 
SELECT `NamingID` 
FROM ARMOR 
WHERE `Material Type` LIKE 'Diamond';

-- POSSIBLE QUERIES:
-- List the amount of all items needed to craft a set of armor and weapon equipped by this mob

-- How many damage per second does a stone axe do?
SELECT `base damage`
FROM `WEAPON`
WHERE `Name` =  'Stone Axe'; 

-- -- What weapon has the highest damage per second?
-- SELECT  `Name`
-- FROM `WEAPON` 
-- WHERE MAX('base damage' / 'reload time');

-- -- Which weapon has the fastest reload time?
-- SELECT  `Name`
-- FROM `WEAPON` 
-- WHERE MIN(`reload time`);

-- How much damage does a netherite axe with sharpness IV do?
-- there's no sharpness IV, and no damage comes with it

-- How much health does a player have?
SELECT `Health`
FROM `MOB`
WHERE `NamingID` = 'player';

-- How much attack damage does a polar bear do?
SELECT `Attack Damage`
FROM `MOB`
WHERE `NamingID` = 'polar_bear';
-- How much health does a slime have?
SELECT `health`
FROM `MOB`
WHERE `NamingID` = 'slime';
-- How much durability does a netherite chestplate have?
SELECT `durability`
FROM `ARMOR`
WHERE `NamingID` = 'netherite_chestplate';


-- Attempt at writing player vs player query
--  diamond helmet + iron chestplate + iron leggings + diamond boots
SELECT helmet.`Defense Points`, chestplate.`Defense Points`, leggings.`Defense Points`, boots.`Defense Points`
FROM `Armor` helmet, `Armor` chestplate, `Armor` leggings, `Armor` boots
WHERE helmet.ARMOR_ID = 



DESCRIBE `ARMOR`;
DESCRIBE `Weapon`;
DESCRIBE `MATERIALS`;





-- How much damage does item x deal per attack
SELECT `Name`, `base damage` AS `Damage per Attack`
FROM `WEAPON`
ORDER BY `base damage` DESC
;


-- Shows all diamond ARMOR
SELECT *
FROM `ARMOR`
WHERE `Material Type` = 'diamond';

-- What is the attack speed of item x?
SELECT `Name`, `reload time`
FROM `WEAPON`
-- WHERE `Name` LIKE X
ORDER BY `reload time` DESC
;

-- What is the damage per second ( DPS ) of item x?
SELECT `Name`, `reload time` * `base damage` AS DPS
FROM `WEAPON`
-- WHERE `Name` LIKE X
ORDER BY `reload time` * `base damage` DESC
;

-- How much total damage item x can deal?
SELECT `Name`, `durability` * `base damage` AS `Total Damage`
FROM `WEAPON`
-- WHERE `Name` LIKE X
ORDER BY `durability` * `base damage` DESC
;
-- How fast can you break item X?
SELECT `Name`, `durability` / `reload time` AS `Total Damage`
FROM `WEAPON`
-- WHERE `Name` LIKE X
ORDER BY `durability` / `reload time` DESC
;
-- Sort all weapons by their reload time
SELECT `Name`, `reload time`
FROM `WEAPON`
-- WHERE `Name` LIKE X
ORDER BY `reload time` DESC
;

-- Sort all weapons by the size of its crafting recipe
-- (count how many 0's are in the recipe)
