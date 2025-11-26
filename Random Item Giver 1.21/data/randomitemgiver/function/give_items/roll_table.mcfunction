#Give 1 random item
execute if score rig rolledItemId matches 1..7 run execute as @a if score @s canGetItems matches 1 run loot give @s loot randomitemgiver:enchanted_books
execute if score rig rolledItemId matches 8..15 run execute as @a if score @s canGetItems matches 1 run loot give @s loot randomitemgiver:potions
execute if score rig rolledItemId matches 16..23 run execute as @a if score @s canGetItems matches 1 run loot give @s loot randomitemgiver:lingering_potions
execute if score rig rolledItemId matches 24..31 run execute as @a if score @s canGetItems matches 1 run loot give @s loot randomitemgiver:splash_potions
execute if score rig rolledItemId matches 32..39 run execute as @a if score @s canGetItems matches 1 run loot give @s loot randomitemgiver:tipped_arrows
execute if score rig rolledItemId matches 40..47 run execute as @a if score @s canGetItems matches 1 run loot give @s loot randomitemgiver:suspicious_stews
execute if score rig rolledItemId matches 48..55 run execute as @a if score @s canGetItems matches 1 run loot give @s loot randomitemgiver:goat_horns
execute if score rig rolledItemId matches 56..63 run execute as @a if score @s canGetItems matches 1 run loot give @s loot randomitemgiver:paintings
execute if score rig rolledItemId matches 64..71 run execute as @a if score @s canGetItems matches 1 run loot give @s loot randomitemgiver:command_blocks
execute if score rig rolledItemId matches 72..79 run execute as @a if score @s canGetItems matches 1 run loot give @s loot randomitemgiver:spawn_eggs
execute if score rig rolledItemId matches 80..89 run execute as @a if score @s canGetItems matches 1 run loot give @s loot randomitemgiver:other_items
execute if score rig rolledItemId matches 90..1100 run execute as @a if score @s canGetItems matches 1 run loot give @s loot randomitemgiver:normal_items

scoreboard players remove rig rollAmount 1
execute if score rig rollAmount matches 1.. run function randomitemgiver:give_items/roll_table