#Give 64 same items
execute if score RandomItemGiver rig_MainNumber matches 1..7 run execute as @a if score @s rig_CanGetItems matches 2 run loot give @s loot randomitemgiver:64sameitems/enchanted_books
execute if score RandomItemGiver rig_MainNumber matches 8..15 run execute as @a if score @s rig_CanGetItems matches 2 run loot give @s loot randomitemgiver:64sameitems/potions
execute if score RandomItemGiver rig_MainNumber matches 16..23 run execute as @a if score @s rig_CanGetItems matches 2 run loot give @s loot randomitemgiver:64sameitems/lingering_potions
execute if score RandomItemGiver rig_MainNumber matches 24..31 run execute as @a if score @s rig_CanGetItems matches 2 run loot give @s loot randomitemgiver:64sameitems/splash_potions
execute if score RandomItemGiver rig_MainNumber matches 32..39 run execute as @a if score @s rig_CanGetItems matches 2 run loot give @s loot randomitemgiver:64sameitems/tipped_arrows
execute if score RandomItemGiver rig_MainNumber matches 40..47 run execute as @a if score @s rig_CanGetItems matches 2 run loot give @s loot randomitemgiver:64sameitems/suspicious_stews
execute if score RandomItemGiver rig_MainNumber matches 48..55 run execute as @a if score @s rig_CanGetItems matches 2 run loot give @s loot randomitemgiver:64sameitems/goat_horns
execute if score RandomItemGiver rig_MainNumber matches 56..63 run execute as @a if score @s rig_CanGetItems matches 2 run loot give @s loot randomitemgiver:64sameitems/paintings
execute if score RandomItemGiver rig_MainNumber matches 64..71 run execute as @a if score @s rig_CanGetItems matches 2 run loot give @s loot randomitemgiver:64sameitems/command_blocks
execute if score RandomItemGiver rig_MainNumber matches 72..79 run execute as @a if score @s rig_CanGetItems matches 2 run loot give @s loot randomitemgiver:64sameitems/spawn_eggs
execute if score RandomItemGiver rig_MainNumber matches 80..89 run execute as @a if score @s rig_CanGetItems matches 2 run loot give @s loot randomitemgiver:64sameitems/other_items
execute if score RandomItemGiver rig_MainNumber matches 90..1100 run execute as @a if score @s rig_CanGetItems matches 2 run loot give @s loot randomitemgiver:64sameitems/normal_items