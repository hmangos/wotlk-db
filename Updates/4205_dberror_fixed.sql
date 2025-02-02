-- `game_event` game event id (85) have length 0 and can't be used.
-- source: TDB
UPDATE game_event SET schedule_type = 1, occurence = 52560, length = 20160 WHERE entry = 85;

-- `dbscripts_on_creature_movement` id 1790101, command 0 has buddy 17900 not found in range 10 of searcher Creature (Entry: 17901 Guid: 63614) (data-flags 1), skipping.
-- FIX
DELETE FROM dbscripts_on_creature_movement WHERE id=1790101;
REPLACE INTO `dbscripts_on_creature_movement` (`id`, `delay`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(1790101,2900,31,17900,15,0,0,0,0,0,0,0,0,0,0,0,0,''),
(1790101,3000,0,0,0,0,17900,20,1,14565,0,0,0,0,0,0,0,''),
(1790101,8000,0,0,0,0,17900,20,4,14568,0,0,0,0,0,0,0,''),
(1790101,12000,0,0,0,0,17900,20,1,14566,0,0,0,0,0,0,0,''),
(1790101,19000,0,0,0,0,17900,20,4,14569,0,0,0,0,0,0,0,''),
(1790101,23000,0,0,0,0,17900,20,1,14567,0,0,0,0,0,0,0,'');
