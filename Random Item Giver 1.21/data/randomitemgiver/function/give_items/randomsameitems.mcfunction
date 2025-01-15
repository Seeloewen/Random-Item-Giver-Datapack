#Give random amount of the same item
execute if score RandomItemGiver rig_MainNumber matches 1..7 run execute as @a if score @s rig_CanGetItems matches 2 run loot give @s loot randomitemgiver:randomamountsameitem/enchanted_books
execute if score RandomItemGiver rig_MainNumber matches 8..15 run execute as @a if score @s rig_CanGetItems matches 2 run loot give @s loot randomitemgiver:randomamountsameitem/potions
execute if score RandomItemGiver rig_MainNumber matches 16..23 run execute as @a if score @s rig_CanGetItems matches 2 run loot give @s loot randomitemgiver:randomamountsameitem/lingering_potions
execute if score RandomItemGiver rig_MainNumber matches 24..31 run execute as @a if score @s rig_CanGetItems matches 2 run loot give @s loot randomitemgiver:randomamountsameitem/splash_potions
execute if score RandomItemGiver rig_MainNumber matches 32..39 run execute as @a if score @s rig_CanGetItems matches 2 run loot give @s loot randomitemgiver:randomamountsameitem/tipped_arrows
execute if score RandomItemGiver rig_MainNumber matches 40..47 run execute as @a if score @s rig_CanGetItems matches 2 run loot give @s loot randomitemgiver:randomamountsameitem/suspicious_stews
execute if score RandomItemGiver rig_MainNumber matches 48..55 run execute as @a if score @s rig_CanGetItems matches 2 run loot give @s loot randomitemgiver:randomamountsameitem/goat_horns
execute if score RandomItemGiver rig_MainNumber matches 56..63 run execute as @a if score @s rig_CanGetItems matches 2 run loot give @s loot randomitemgiver:randomamountsameitem/paintings
execute if score RandomItemGiver rig_MainNumber matches 64..71 run execute as @a if score @s rig_CanGetItems matches 2 run loot give @s loot randomitemgiver:randomamountsameitem/command_blocks
execute if score RandomItemGiver rig_MainNumber matches 72..79 run execute as @a if score @s rig_CanGetItems matches 2 run loot give @s loot randomitemgiver:randomamountsameitem/spawn_eggs
execute if score RandomItemGiver rig_MainNumber matches 80..89 run execute as @a if score @s rig_CanGetItems matches 2 run loot give @s loot randomitemgiver:randomamountsameitem/other_items
execute if score RandomItemGiver rig_MainNumber matches 90..1100 run execute as @a if score @s rig_CanGetItems matches 2 run loot give @s loot randomitemgiver:randomamountsameitem/normal_items
