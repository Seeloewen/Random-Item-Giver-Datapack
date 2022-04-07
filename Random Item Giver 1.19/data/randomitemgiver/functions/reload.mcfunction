#Add forceload to chunk at 0 0 so the item timer works properly
forceload add 0 0

#Add objectives
scoreboard objectives add Seconds dummy
scoreboard objectives add GiveItems dummy
scoreboard objectives add SpawnEggs dummy
scoreboard objectives add CommandBlocks dummy
scoreboard objectives add OtherItems dummy
scoreboard objectives add ItemTimer dummy
scoreboard objectives add ShowItemMessage dummy
scoreboard objectives add ItemGiveType dummy
scoreboard objectives add ItemGiveAmount dummy
scoreboard objectives add PlayItemSound dummy

#Setup datapack if no settings have been made before
execute unless score RandomItemGiver Seconds matches 1..999999999 run scoreboard players set RandomItemGiver Seconds 15
execute unless score RandomItemGiver GiveItems matches 1..2 run scoreboard players set RandomItemGiver GiveItems 2
execute unless score RandomItemGiver SpawnEggs matches 1..2 run scoreboard players set RandomItemGiver SpawnEggs 2
execute unless score RandomItemGiver CommandBlocks matches 1..2 run scoreboard players set RandomItemGiver CommandBlocks 2
execute unless score RandomItemGiver OtherItems matches 1..2 run scoreboard players set RandomItemGiver OtherItems 2
execute unless score RandomItemGiver ItemTimer matches 1..999999999 run scoreboard players set RandomItemGiver ItemTimer 300
execute unless score RandomItemGiver ShowItemMessage matches 1..2 run scoreboard players set RandomItemGiver ShowItemMessage 1
execute unless score RandomItemGiver ItemGiveType matches 1..2 run scoreboard players set RandomItemGiver ItemGiveType 1
execute unless score RandomItemGiver ItemGiveAmount matches 1..7 run scoreboard players set RandomItemGiver ItemGiveAmount 1
execute unless score RandomItemGiver PlayItemSound matches 1..2 run scoreboard players set RandomItemGiver PlayItemSound 1

#Post that datapack is loaded
tellraw @a {"text":""}
tellraw @a {"text":"Random Item Giver 1.3.0-Beta4 was successfully loaded!","color":"green"}
tellraw @a {"text":"> Click here to open the menu","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Click here to open the menu","color":"green"}]},"clickEvent":{"action":"run_command","value":"/function randomitemgiver:menus/menu"}}
tellraw @a {"text":" "}
tellraw @a ["",{"text":"Important","bold":true,"color":"red"},{"text":": You are using a Beta of the Random Item Giver, so you might experience issues. Please report every bug you can find ","color":"red"},{"text":"here","underlined":true,"color":"red","clickEvent":{"action":"open_url","value":"https://discord.gg/GhaVU3G9xR"},"hoverEvent":{"action":"show_text","contents":"Join Louis9's datapack Discord server"}},{"text":".","color":"red"}]


#######################
# Score explainations #
#######################

#Seconds: Must be between 1 and 999999999
#GiveItems: Score 2 means "enabled", score 1 "disabled"
#SpawnEggs: Score 2 means "enabled", score 1 "disabled"
#CommandBlocks: Score 2 means "enabled", score 1 "disabled"
#OtherItems: Score 2 means "enabled", score 1 "disabled"
#ItemTimer: Must be between 1 and 999999999
#ShowItemMessage: Score 2 means "enabled", score 1 "disabled"
#ItemGiveType: 1 means "same item", 2 means "different item"
#ItemGiveAmount: 1 means "1 item", 2 means "2 items", 3 means "3 items", 4 means "5 items", 5 means "10 items", 6 means "32 items", 7 means "64"
