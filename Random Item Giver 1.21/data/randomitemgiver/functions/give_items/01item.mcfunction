#Give 1 random item
execute if score RandomItemGiver MainNumber matches 1 run execute as @a if score @s rig_CanGetItems matches 2 run loot give @s loot randomitemgiver:01item/enchanted_books
execute if score RandomItemGiver MainNumber matches 2 run execute as @a if score @s rig_CanGetItems matches 2 run loot give @s loot randomitemgiver:01item/potions
execute if score RandomItemGiver MainNumber matches 3 run execute as @a if score @s rig_CanGetItems matches 2 run loot give @s loot randomitemgiver:01item/lingering_potions
execute if score RandomItemGiver MainNumber matches 4 run execute as @a if score @s rig_CanGetItems matches 2 run loot give @s loot randomitemgiver:01item/splash_potions
execute if score RandomItemGiver MainNumber matches 5 run execute as @a if score @s rig_CanGetItems matches 2 run loot give @s loot randomitemgiver:01item/tipped_arrows
execute if score RandomItemGiver MainNumber matches 6 run execute as @a if score @s rig_CanGetItems matches 2 run loot give @s loot randomitemgiver:01item/suspicious_stews
execute if score RandomItemGiver MainNumber matches 7 run execute as @a if score @s rig_CanGetItems matches 2 run loot give @s loot randomitemgiver:01item/goat_horns
execute if score RandomItemGiver MainNumber matches 8 run execute as @a if score @s rig_CanGetItems matches 2 run loot give @s loot randomitemgiver:01item/paintings
execute if score RandomItemGiver MainNumber matches 9 run execute as @a if score @s rig_CanGetItems matches 2 run loot give @s loot randomitemgiver:01item/command_blocks
execute if score RandomItemGiver MainNumber matches 10 run execute as @a if score @s rig_CanGetItems matches 2 run loot give @s loot randomitemgiver:01item/spawn_eggs
execute if score RandomItemGiver MainNumber matches 11 run execute as @a if score @s rig_CanGetItems matches 2 run loot give @s loot randomitemgiver:01item/other_items
execute if score RandomItemGiver MainNumber matches 12..1000 run execute as @a if score @s rig_CanGetItems matches 2 run loot give @s loot randomitemgiver:01item/normal_items