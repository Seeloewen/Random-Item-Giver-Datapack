#Generate random number
execute store result score rig rolledItemId run random value 1..114

#Regenerate the random number if it hits a disabled loot table (The regenerated number is specified in a way that it never hits another disabled item)
execute if score rig rolledItemId matches 1 if data storage randomitemgiver:settings {items:{enchanted_books:0}} store result score rig rolledItemId run random value 14..114
execute if score rig rolledItemId matches 2 if data storage randomitemgiver:settings {items:{potions:0}} store result score rig rolledItemId run random value 14..114
execute if score rig rolledItemId matches 3 if data storage randomitemgiver:settings {items:{lingering_potions:0}} store result score rig rolledItemId run random value 14..114
execute if score rig rolledItemId matches 4 if data storage randomitemgiver:settings {items:{splash_potions:0}} store result score rig rolledItemId run random value 14..114
execute if score rig rolledItemId matches 5 if data storage randomitemgiver:settings {items:{tipped_arrows:0}} store result score rig rolledItemId run random value 14..114
execute if score rig rolledItemId matches 6 if data storage randomitemgiver:settings {items:{suspicious_stews:0}} store result score rig rolledItemId run random value 14..114
execute if score rig rolledItemId matches 7 if data storage randomitemgiver:settings {items:{goat_horns:0}} store result score rig rolledItemId run random value 14..114
execute if score rig rolledItemId matches 8 if data storage randomitemgiver:settings {items:{paintings:0}} store result score rig rolledItemId run random value 14..114
execute if score rig rolledItemId matches 9 if data storage randomitemgiver:settings {items:{command_blocks:0}} store result score rig rolledItemId run random value 14..114
execute if score rig rolledItemId matches 10 if data storage randomitemgiver:settings {items:{spawn_eggs:0}} store result score rig rolledItemId run random value 14..114
execute if score rig rolledItemId matches 11 if data storage randomitemgiver:settings {items:{other_creatives:0}} store result score rig rolledItemId run random value 14..114
execute if score rig rolledItemId matches 12 if data storage randomitemgiver:settings {items:{pottery_sherds:0}} store result score rig rolledItemId run random value 14..114
execute if score rig rolledItemId matches 13 if data storage randomitemgiver:settings {items:{smithing_templates:0}} store result score rig rolledItemId run random value 14..114

#Give a random item. The chances are made so that around 1% of items are special items
execute if score rig rolledItemId matches 1 run execute as @a if score @s canGetItems matches 1 run loot give @s loot randomitemgiver:enchanted_books
execute if score rig rolledItemId matches 2 run execute as @a if score @s canGetItems matches 1 run loot give @s loot randomitemgiver:potions
execute if score rig rolledItemId matches 3 run execute as @a if score @s canGetItems matches 1 run loot give @s loot randomitemgiver:lingering_potions
execute if score rig rolledItemId matches 4 run execute as @a if score @s canGetItems matches 1 run loot give @s loot randomitemgiver:splash_potions
execute if score rig rolledItemId matches 5 run execute as @a if score @s canGetItems matches 1 run loot give @s loot randomitemgiver:tipped_arrows
execute if score rig rolledItemId matches 6 run execute as @a if score @s canGetItems matches 1 run loot give @s loot randomitemgiver:suspicious_stews
execute if score rig rolledItemId matches 7 run execute as @a if score @s canGetItems matches 1 run loot give @s loot randomitemgiver:goat_horns
execute if score rig rolledItemId matches 8 run execute as @a if score @s canGetItems matches 1 run loot give @s loot randomitemgiver:paintings
execute if score rig rolledItemId matches 9 run execute as @a if score @s canGetItems matches 1 run loot give @s loot randomitemgiver:command_blocks
execute if score rig rolledItemId matches 10 run execute as @a if score @s canGetItems matches 1 run loot give @s loot randomitemgiver:spawn_eggs
execute if score rig rolledItemId matches 11 run execute as @a if score @s canGetItems matches 1 run loot give @s loot randomitemgiver:other_items
execute if score rig rolledItemId matches 12 run execute as @a if score @s canGetItems matches 1 run loot give @s loot randomitemgiver:pottery_sherds
execute if score rig rolledItemId matches 13 run execute as @a if score @s canGetItems matches 1 run loot give @s loot randomitemgiver:smithing_templates

execute if score rig rolledItemId matches 14..114 run execute as @a if score @s canGetItems matches 1 run loot give @s loot randomitemgiver:normal_items

#Recursively roll items when the amount is bigger than one
scoreboard players remove rig rollAmount 1
execute if score rig rollAmount matches 1.. run function randomitemgiver:give_items/roll_table