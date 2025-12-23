#Disable Command Block feedback to hide 'Executed commands from function' message and schedule enabling it again
gamerule sendCommandFeedback false
schedule function randomitemgiver:reset_feedback 1t

#Make everyone able to get items if there's no specific setting yet (accounts for players that may join after the reload)
execute as @a run execute as @s unless score @s canGetItems matches 0..1 run scoreboard players set @s canGetItems 1

#Generate random number
execute store result score rig rolledItemId run random value 1..1100

#Regenerate the random number if it hits a disabled loot table (The regenerated number is specified in a way that it never hits another disabled item)
execute if score rig rolledItemId matches 1..7 if data storage randomitemgiver:settings {items:{enchanted_books:0}} store result score rig rolledItemId run random value 90..1100
execute if score rig rolledItemId matches 8..15 if data storage randomitemgiver:settings {items:{potions:0}} store result score rig rolledItemId run random value 90..1100
execute if score rig rolledItemId matches 16..23 if data storage randomitemgiver:settings {items:{lingering_potions:0}} store result score rig rolledItemId run random value 90..1100
execute if score rig rolledItemId matches 24..31 if data storage randomitemgiver:settings {items:{splash_potions:0}} store result score rig rolledItemId run random value 90..1100
execute if score rig rolledItemId matches 32..39 if data storage randomitemgiver:settings {items:{tipped_arrows:0}} store result score rig rolledItemId run random value 90..1100
execute if score rig rolledItemId matches 40..47 if data storage randomitemgiver:settings {items:{suspicious_stews:0}} store result score rig rolledItemId run random value 90..1100
execute if score rig rolledItemId matches 48..55 if data storage randomitemgiver:settings {items:{goat_horns:0}} store result score rig rolledItemId run random value 90..1100
execute if score rig rolledItemId matches 56..63 if data storage randomitemgiver:settings {items:{paintings:0}} store result score rig rolledItemId run random value 90..1100
execute if score rig rolledItemId matches 64..71 if data storage randomitemgiver:settings {items:{command_blocks:0}} store result score rig rolledItemId run random value 90..1100
execute if score rig rolledItemId matches 72..79 if data storage randomitemgiver:settings {items:{spawn_eggs:0}} store result score rig rolledItemId run random value 90..1100
execute if score rig rolledItemId matches 80..89 if data storage randomitemgiver:settings {items:{other_creatives:0}} store result score rig rolledItemId run random value 90..1100

#Give a random item (x times same item)
execute if data storage randomitemgiver:settings {items:{same_item:1}} if data storage randomitemgiver:settings {items:{random_amount:0}} store result score rig itemAmount run data get storage randomitemgiver:settings items.amount
execute if data storage randomitemgiver:settings {items:{same_item:1}} if data storage randomitemgiver:settings {items:{random_amount:1}} store result score rig itemAmount run random value 1..64
execute if data storage randomitemgiver:settings {items:{same_item:1}} run scoreboard players set rig rollAmount 1
execute as @a if data storage randomitemgiver:settings {items:{same_item:1}} run execute if score @s canGetItems matches 1 run scoreboard players operation @s randomItemsReceived += rig itemAmount
execute if data storage randomitemgiver:settings {items:{same_item:1}} run function randomitemgiver:give_items/roll_table

#Give a random item (x times different items)
execute if data storage randomitemgiver:settings {items:{same_item:0}} if data storage randomitemgiver:settings {items:{random_amount:0}} store result score rig rollAmount run data get storage randomitemgiver:settings items.amount
execute if data storage randomitemgiver:settings {items:{same_item:0}} if data storage randomitemgiver:settings {items:{random_amount:1}} store result score rig rollAmount run random value 1..64
execute as @a if data storage randomitemgiver:settings {items:{same_item:0}} run execute if score @s canGetItems matches 1 run scoreboard players operation @s randomItemsReceived += rig rollAmount
execute if data storage randomitemgiver:settings {items:{same_item:0}} run scoreboard players set rig itemAmount 1
execute if data storage randomitemgiver:settings {items:{same_item:0}} run function randomitemgiver:give_items/roll_table

#Post that you got an item (if enabled)
execute as @a if data storage randomitemgiver:settings {general:{item_amount:1}} if data storage randomitemgiver:settings {general:{show_message:1}} run execute if score @s canGetItems matches 1 run tellraw @s [{text: '(',color: 'gray'},{text: '✸',color: 'aqua'},{text: ') ',color: 'gray'},{text: 'You received a new item!',color: 'aqua'}]
execute as @a unless data storage randomitemgiver:settings {general:{item_amount:1}} if data storage randomitemgiver:settings {general:{show_message:1}} run execute if score @s canGetItems matches 1 run tellraw @s [{text: '(',color: 'gray'},{text: '✸',color: 'aqua'},{text: ') ',color: 'gray'},{text: 'You received new items!',color: 'aqua'}]

#Play sound that you got an item (if enabled)
execute as @a at @s if data storage randomitemgiver:settings {general:{sound_type:1}} if data storage randomitemgiver:settings {general:{enable_sound:1}} run execute if score @s canGetItems matches 1 run playsound entity.item.pickup player @p
execute as @a at @s if data storage randomitemgiver:settings {general:{sound_type:2}} if data storage randomitemgiver:settings {general:{enable_sound:1}} run execute if score @s canGetItems matches 1 run playsound block.bell.use player @p
execute as @a at @s if data storage randomitemgiver:settings {general:{sound_type:3}} if data storage randomitemgiver:settings {general:{enable_sound:1}} run execute if score @s canGetItems matches 1 run playsound block.amethyst_block.hit player @p
execute as @a at @s if data storage randomitemgiver:settings {general:{sound_type:4}} if data storage randomitemgiver:settings {general:{enable_sound:1}} run execute if score @s canGetItems matches 1 run playsound entity.arrow.hit player @p
execute as @a at @s if data storage randomitemgiver:settings {general:{sound_type:5}} if data storage randomitemgiver:settings {general:{enable_sound:1}} run execute if score @s canGetItems matches 1 run playsound entity.experience_orb.pickup player @p

#Remove temporary boolean
scoreboard players set rig giveNow 0
scoreboard objectives remove giveNow