#Remove Scoreboard entrys
scoreboard objectives remove Seconds
scoreboard objectives remove GiveItems
scoreboard objectives remove SpawnEggs
scoreboard objectives remove CommandBlocks
scoreboard objectives remove OtherItems
scoreboard objectives remove ItemTimer
scoreboard objectives remove ShowItemMessage
scoreboard objectives remove ItemGiveType
scoreboard objectives remove ItemGiveAmount
scoreboard objectives remove PlayItemSound

#Remove forceload for chunk at 0 0
forceload remove 0 0

#Post that datapack was disabled
tellraw @a ["",{"text":"Random Item Giver was successfully disabled.","color":"red"},{"text":"\n"},{"text":"click here To enable it again","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/datapack enable \"file/random-item-giver-1-0-17-mc-1-16-5.zip\""},"hoverEvent":{"action":"show_text","contents":"Enable Random Item Giver"}}]

#Disable Datapack
datapack disable "file/random-item-giver-1-0-17-mc-1-16-5.zip"
