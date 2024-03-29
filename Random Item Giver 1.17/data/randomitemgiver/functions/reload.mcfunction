#Load datapack
scoreboard objectives add Seconds dummy
scoreboard objectives add Enabled dummy
scoreboard objectives add GiveItems dummy
execute unless score Time Seconds matches 1..999999999 run scoreboard players set Time Seconds 15
execute unless score RandomItemGiverPack GiveItems matches 1..2 run scoreboard players set RandomItemGiverPack GiveItems 2
execute unless score SpawnEggs Enabled matches 1..2 run scoreboard players set SpawnEggs Enabled 2
execute unless score CommandBlocks Enabled matches 1..2 run scoreboard players set CommandBlocks Enabled 2
execute unless score OtherItems Enabled matches 1..2 run scoreboard players set OtherItems Enabled 2
execute unless score give_item item_timer matches 1..999999999 run scoreboard players set give_item item_timer 300
execute unless score ShowItemMessage Enabled matches 1..2 run scoreboard players set ShowItemMessage Enabled 1

#Post that datapack is loaded
tellraw @a {"text":" "}
tellraw @a {"text":"Random Item Giver 1.1.6 was successfully loaded!","color":"green"}
tellraw @a {"text":"> Click here to open the menu","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to open the menu","color":"green"}]},"clickEvent":{"action":"run_command","value":"/function randomitemgiver:menus/menu"}}

#Seconds: Must be between 1 and 999999999
#SpawnEggs: Score 2 means enabled, score 1 disabled
#CommandBlocks: Score 2 means enabled, score 1 disabled
#OtherItems: Score 2 means enabled, score 1 disabled
#GiveItems: Score 2 means enabled, score 1 disabled
#ShowItemMessage: Score 2 means enabled, score 1 disabled