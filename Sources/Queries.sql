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


DESCRIBE `ARMOR`;
DESCRIBE `Weapon`;
DESCRIBE `MATERIALS`;