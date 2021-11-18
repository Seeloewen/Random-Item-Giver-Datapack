#Check for time
scoreboard objectives add item_timer dummy
scoreboard players add give item_timer 1
execute if score give item_timer >= give_item item_timer run scoreboard players set give item_timer 0
forceload add 0 0

#Generate random number
setblock 0 255 0 chest
execute store result score rng_main item_timer run loot insert 0 255 0 loot randomitemgiver:rng_main

#Give random item
execute if score give item_timer matches 0 if score RandomItemGiverPack GiveItems matches 2 if score rng_main item_timer matches 7..1060 if score SpawnEggs Enabled matches 2 if score CommandBlocks Enabled matches 2 if score OtherItems Enabled matches 2 run execute as @a run loot give @s loot randomitemgiver:main
execute if score give item_timer matches 0 if score RandomItemGiverPack GiveItems matches 2 if score rng_main item_timer matches 7..1060 if score SpawnEggs Enabled matches 1 if score CommandBlocks Enabled matches 1 if score OtherItems Enabled matches 1 run execute as @a run loot give @s loot randomitemgiver:main_without_creative-only
execute if score give item_timer matches 0 if score RandomItemGiverPack GiveItems matches 2 if score rng_main item_timer matches 7..1060 if score SpawnEggs Enabled matches 2 if score CommandBlocks Enabled matches 1 if score OtherItems Enabled matches 1 run execute as @a run loot give @s loot randomitemgiver:special_vxx
execute if score give item_timer matches 0 if score RandomItemGiverPack GiveItems matches 2 if score rng_main item_timer matches 7..1060 if score SpawnEggs Enabled matches 2 if score CommandBlocks Enabled matches 2 if score OtherItems Enabled matches 1 run execute as @a run loot give @s loot randomitemgiver:special_vvx
execute if score give item_timer matches 0 if score RandomItemGiverPack GiveItems matches 2 if score rng_main item_timer matches 7..1060 if score SpawnEggs Enabled matches 1 if score CommandBlocks Enabled matches 2 if score OtherItems Enabled matches 1 run execute as @a run loot give @s loot randomitemgiver:special_xvx
execute if score give item_timer matches 0 if score RandomItemGiverPack GiveItems matches 2 if score rng_main item_timer matches 7..1060 if score SpawnEggs Enabled matches 1 if score CommandBlocks Enabled matches 2 if score OtherItems Enabled matches 2 run execute as @a run loot give @s loot randomitemgiver:special_xvv
execute if score give item_timer matches 0 if score RandomItemGiverPack GiveItems matches 2 if score rng_main item_timer matches 7..1060 if score SpawnEggs Enabled matches 1 if score CommandBlocks Enabled matches 1 if score OtherItems Enabled matches 2 run execute as @a run loot give @s loot randomitemgiver:special_xxv
execute if score give item_timer matches 0 if score RandomItemGiverPack GiveItems matches 2 if score rng_main item_timer matches 7..1060 if score SpawnEggs Enabled matches 2 if score CommandBlocks Enabled matches 1 if score OtherItems Enabled matches 2 run execute as @a run loot give @s loot randomitemgiver:special_vxv
execute if score give item_timer matches 0 if score RandomItemGiverPack GiveItems matches 2 if score rng_main item_timer matches 1 run execute as @a run loot give @s loot randomitemgiver:enchanted_books
execute if score give item_timer matches 0 if score RandomItemGiverPack GiveItems matches 2 if score rng_main item_timer matches 2 run execute as @a run loot give @s loot randomitemgiver:potion
execute if score give item_timer matches 0 if score RandomItemGiverPack GiveItems matches 2 if score rng_main item_timer matches 3 run execute as @a run loot give @s loot randomitemgiver:lingering_potion
execute if score give item_timer matches 0 if score RandomItemGiverPack GiveItems matches 2 if score rng_main item_timer matches 4 run execute as @a run loot give @s loot randomitemgiver:splash_potion
execute if score give item_timer matches 0 if score RandomItemGiverPack GiveItems matches 2 if score rng_main item_timer matches 5 run execute as @a run loot give @s loot randomitemgiver:tipped_arrow
execute if score give item_timer matches 0 if score RandomItemGiverPack GiveItems matches 2 if score rng_main item_timer matches 6 run execute as @a run loot give @s loot randomitemgiver:suspicious_stew

#Post that you got an item (if enabled)
execute if score give item_timer matches 0 if score RandomItemGiverPack GiveItems matches 2 if score ShowItemMessage Enabled matches 2 run tellraw @a ["",{"text":"[","color":"gray"},{"text":"Random Item Giver","bold":true,"color":"gold"},{"text":"]","color":"gray"},{"text":" You received a new item!","color":"green"}] 