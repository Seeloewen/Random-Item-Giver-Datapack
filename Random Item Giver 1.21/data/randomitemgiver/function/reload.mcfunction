#Disable Command Block feedback to hide 'Executed commands from function' message and schedule enabling it again
gamerule sendCommandFeedback false
schedule function randomitemgiver:reset_feedback 1t

#Add objectives - only used internally for temporary storage. Permanent settings are stored in data storage as of 1.5.6
scoreboard objectives add tempConversion dummy
scoreboard objectives add internalTimer dummy
scoreboard objectives add randomItemsReceived dummy {"text":"Random Items Received"}
scoreboard objectives add itemsReceivedTemp dummy
scoreboard objectives add rolledItemId dummy
scoreboard objectives add randomTimeValue dummy
scoreboard objectives add canGetItems dummy
scoreboard objectives add itemAmount dummy
scoreboard objectives add rollAmount dummy
scoreboard objectives add internalMaxTimer dummy

scoreboard objectives add menuTrigger trigger

#This trigger is only used as easy access to the main menu
scoreboard objectives add RandomItemGiver trigger

#Check if timer setting is in a valid range (positive int)
execute store result score rig tempConversion run data get storage randomitemgiver:settings general.timer
execute unless score rig tempConversion matches 1.. run scoreboard players set rig internalMaxTimer 300
execute unless score rig tempConversion matches 1.. run scoreboard players set rig tempConversion 20
execute store result storage randomitemgiver:settings general.timer int 1 run scoreboard players get rig tempConversion

#Check if item amount is in a valid range (1 to 256)
execute store result score rig tempConversion run data get storage randomitemgiver:settings items.amount
execute unless score rig tempConversion matches 1..256 run scoreboard players set rig tempConversion 1
execute store result storage randomitemgiver:settings items.amount int 1 run scoreboard players get rig tempConversion

#Check if sound is in a valid range (1 to 5)
execute store result score rig tempConversion run data get storage randomitemgiver:settings general.sound_type
execute unless score rig tempConversion matches 1..5 run scoreboard players set rig tempConversion 1
execute store result storage randomitemgiver:settings general.sound_type int 1 run scoreboard players get rig tempConversion

#Setup other default settings if no entry exists for them
execute unless data storage randomitemgiver:settings general.enabled run data modify storage randomitemgiver:settings general.enabled set value 1
execute unless data storage randomitemgiver:settings general.show_message run data modify storage randomitemgiver:settings general.show_message set value 0
execute unless data storage randomitemgiver:settings general.enable_sound run data modify storage randomitemgiver:settings general.enable_sound set value 0
execute unless data storage randomitemgiver:settings general.show_scoreboard run data modify storage randomitemgiver:settings general.show_scoreboard set value 0
execute unless data storage randomitemgiver:settings general.enable_random_timer run data modify storage randomitemgiver:settings general.enable_random_timer set value 0
execute unless data storage randomitemgiver:settings general.enable_bossbar run data modify storage randomitemgiver:settings general.enable_bossbar set value 1
execute unless data storage randomitemgiver:settings general.show_useless_warnings run data modify storage randomitemgiver:settings general.show_useless_warnings set value 1

execute unless data storage randomitemgiver:settings items.same_item run data modify storage randomitemgiver:settings items.same_item set value 0
execute unless data storage randomitemgiver:settings items.random_amount run data modify storage randomitemgiver:settings items.random_amount set value 0
execute unless data storage randomitemgiver:settings items.spawn_eggs run data modify storage randomitemgiver:settings items.spawn_eggs set value 1
execute unless data storage randomitemgiver:settings items.command_blocks run data modify storage randomitemgiver:settings items.command_blocks set value 1
execute unless data storage randomitemgiver:settings items.other_creatives run data modify storage randomitemgiver:settings items.other_creatives set value 1
execute unless data storage randomitemgiver:settings items.enchanted_books run data modify storage randomitemgiver:settings items.enchanted_books set value 1
execute unless data storage randomitemgiver:settings items.potions run data modify storage randomitemgiver:settings items.potions set value 1
execute unless data storage randomitemgiver:settings items.lingering_potions run data modify storage randomitemgiver:settings items.lingering_potions set value 1
execute unless data storage randomitemgiver:settings items.splash_potions run data modify storage randomitemgiver:settings items.splash_potions set value 1
execute unless data storage randomitemgiver:settings items.tipped_arrows run data modify storage randomitemgiver:settings items.tipped_arrows set value 1
execute unless data storage randomitemgiver:settings items.suspicious_stews run data modify storage randomitemgiver:settings items.suspicious_stews set value 1
execute unless data storage randomitemgiver:settings items.goat_horns run data modify storage randomitemgiver:settings items.goat_horns set value 1
execute unless data storage randomitemgiver:settings items.paintings run data modify storage randomitemgiver:settings items.paintings set value 1
execute unless data storage randomitemgiver:settings items.pottery_sherds run data modify storage randomitemgiver:settings items.pottery_sherds set value 1
execute unless data storage randomitemgiver:settings items.smithing_templates run data modify storage randomitemgiver:settings items.smithing_templates set value 1

execute as @a run execute as @s unless score @s canGetItems matches 0..1 run scoreboard players set @s canGetItems 1
execute store result score rig randomTimeValue run random value 1..1200
scoreboard players set rig internalTimer 0

#Post that datapack is loaded
tellraw @a {text: ''}
tellraw @a {text: 'Random Item Giver 1.5.6 was successfully loaded!',color: 'green'}
tellraw @a [{text: '[',color: 'gray',click_event:{'action':'run_command', command: '/trigger menuTrigger set 11'},hover_event:{action: 'show_text', value: 'Open the main menu'}},{text: '➤',color: 'green',click_event:{'action':'run_command', command: '/trigger menuTrigger set 11'},hover_event:{action: 'show_text', value: 'Open the main menu'}},{text: ']',color: 'gray',click_event:{'action':'run_command', command: '/trigger menuTrigger set 11'},hover_event:{action: 'show_text', value: 'Open the main menu'}},{text: ' ',click_event:{'action':'run_command', command: '/trigger menuTrigger set 11'},hover_event:{action: 'show_text', value: 'Open the main menu'}},{text: 'Click here to open the menu',color: 'green',click_event:{'action':'run_command', command: '/trigger menuTrigger set 11'},hover_event:{action: 'show_text', value: 'Open the main menu'}}]
tellraw @a {text: ''}
#tellraw @a [{text: '(',color: 'gray'},{text: '⚠',color: 'gold'},{text: ') ',color: 'gray'},{text: 'You are using a Beta version of the Random Item Giver Datapack. Please report any issues you can find!',color: 'gold'}]

#######################
# Data explainations  #
#######################
#items.amount: 1 means "1 item", 2 means "2 items", 3 means "3 items", 4 means "5 items", 5 means "10 items", 6 means "32 items", 7 means "64 items", 8 means "Random amount between 1 and 64"
#general.sound_type: Score 1 means "Plop", score 2 means "Bell", score 3 means "Amethyst", score 4 means "Arrow", score 5 means "Experience"
