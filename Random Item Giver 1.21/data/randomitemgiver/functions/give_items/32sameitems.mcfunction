#Give 32 same items
execute if score RandomItemGiver rig_MainNumber matches 1 run execute as @a if score @s rig_CanGetItems matches 2 run loot give @s loot randomitemgiver:32sameitems/enchanted_books
execute if score RandomItemGiver rig_MainNumber matches 2 run execute as @a if score @s rig_CanGetItems matches 2 run loot give @s loot randomitemgiver:32sameitems/potions
execute if score RandomItemGiver rig_MainNumber matches 3 run execute as @a if score @s rig_CanGetItems matches 2 run loot give @s loot randomitemgiver:32sameitems/lingering_potions
execute if score RandomItemGiver rig_MainNumber matches 4 run execute as @a if score @s rig_CanGetItems matches 2 run loot give @s loot randomitemgiver:32sameitems/splash_potions
execute if score RandomItemGiver rig_MainNumber matches 5 run execute as @a if score @s rig_CanGetItems matches 2 run loot give @s loot randomitemgiver:32sameitems/tipped_arrows
execute if score RandomItemGiver rig_MainNumber matches 6 run execute as @a if score @s rig_CanGetItems matches 2 run loot give @s loot randomitemgiver:32sameitems/suspicious_stews
execute if score RandomItemGiver rig_MainNumber matches 7 run execute as @a if score @s rig_CanGetItems matches 2 run loot give @s loot randomitemgiver:32sameitems/goat_horns
execute if score RandomItemGiver rig_MainNumber matches 8 run execute as @a if score @s rig_CanGetItems matches 2 run loot give @s loot randomitemgiver:32sameitems/paintings
execute if score RandomItemGiver rig_MainNumber matches 9 run execute as @a if score @s rig_CanGetItems matches 2 run loot give @s loot randomitemgiver:32sameitems/command_blocks
execute if score RandomItemGiver rig_MainNumber matches 10 run execute as @a if score @s rig_CanGetItems matches 2 run loot give @s loot randomitemgiver:32sameitems/spawn_eggs
execute if score RandomItemGiver rig_MainNumber matches 11 run execute as @a if score @s rig_CanGetItems matches 2 run loot give @s loot randomitemgiver:32sameitems/other_items
execute if score RandomItemGiver rig_MainNumber matches 12..1000 run execute as @a if score @s rig_CanGetItems matches 2 run loot give @s loot randomitemgiver:32sameitems/normal_items