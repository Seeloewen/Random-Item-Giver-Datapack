#Give random amount of different items
execute if score rig rolledItemId matches 1..7 run execute as @a if score @s canGetItems matches 1 store result score @s itemsReceivedTemp run loot give @s loot randomitemgiver:randomamountdifitems/enchanted_books
execute if score rig rolledItemId matches 8..15 run execute as @a if score @s canGetItems matches 1 store result score @s itemsReceivedTemp run loot give @s loot randomitemgiver:randomamountdifitems/potions
execute if score rig rolledItemId matches 16..23 run execute as @a if score @s canGetItems matches 1 store result score @s itemsReceivedTemp run loot give @s loot randomitemgiver:randomamountdifitems/lingering_potions
execute if score rig rolledItemId matches 24..31 run execute as @a if score @s canGetItems matches 1 store result score @s itemsReceivedTemp run loot give @s loot randomitemgiver:randomamountdifitems/splash_potions
execute if score rig rolledItemId matches 32..39 run execute as @a if score @s canGetItems matches 1 store result score @s itemsReceivedTemp run loot give @s loot randomitemgiver:randomamountdifitems/tipped_arrows
execute if score rig rolledItemId matches 40..47 run execute as @a if score @s canGetItems matches 1 store result score @s itemsReceivedTemp run loot give @s loot randomitemgiver:randomamountdifitems/suspicious_stews
execute if score rig rolledItemId matches 48..55 run execute as @a if score @s canGetItems matches 1 store result score @s itemsReceivedTemp run loot give @s loot randomitemgiver:randomamountdifitems/goat_horns
execute if score rig rolledItemId matches 56..63 run execute as @a if score @s canGetItems matches 1 store result score @s itemsReceivedTemp run loot give @s loot randomitemgiver:randomamountdifitems/paintings
execute if score rig rolledItemId matches 64..71 run execute as @a if score @s canGetItems matches 1 store result score @s itemsReceivedTemp run loot give @s loot randomitemgiver:randomamountdifitems/command_blocks
execute if score rig rolledItemId matches 72..79 run execute as @a if score @s canGetItems matches 1 store result score @s itemsReceivedTemp run loot give @s loot randomitemgiver:randomamountdifitems/spawn_eggs
execute if score rig rolledItemId matches 80..89 run execute as @a if score @s canGetItems matches 1 store result score @s itemsReceivedTemp run loot give @s loot randomitemgiver:randomamountdifitems/other_items
execute if score rig rolledItemId matches 90..1100 run execute as @a if score @s canGetItems matches 1 store result score @s itemsReceivedTemp run loot give @s loot randomitemgiver:randomamountdifitems/normal_items
