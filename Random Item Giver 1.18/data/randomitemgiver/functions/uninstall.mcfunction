#Remove Scoreboard entrys
scoreboard objectives remove Seconds dummy
scoreboard objectives remove GiveItems dummy
scoreboard objectives remove SpawnEggs dummy
scoreboard objectives remove CommandBlocks dummy
scoreboard objectives remove OtherItems dummy
scoreboard objectives remove ShowItemMessage dummy
scoreboard objectives remove ItemGiveType dummy
scoreboard objectives remove ItemGiveAmount dummy

#Remove forceload for chunk at 0 0
forceload remove 0 0

#Post that datapack was disabled
tellraw @a ["",{"text":"Random Item Giver was successfully disabled.","color":"red"},{"text":"\n"},{"text":"Click here to enable it again","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/datapack enable \"file/random-item-giver-1-2-1-mc-1-18-1\""},"hoverEvent":{"action":"show_text","contents":"Enable Random Item Giver"}}]

#Disable Datapack
datapack disable "file/random-item-giver-1-2-1-mc-1-18-1"