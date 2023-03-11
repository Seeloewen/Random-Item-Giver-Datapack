#Disable Command Block feedback to hide 'Executed commands from function' message and schedule enabling it again
gamerule sendCommandFeedback false
schedule function randomitemgiver:reset_feedback 1t

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
scoreboard objectives remove ShowItemAmount
scoreboard objectives remove RandomItemsRec
scoreboard objectives remove ItemsRecTemp
scoreboard objectives remove RASIG
scoreboard objectives remove MainGen

#Post that datapack was disabled
tellraw @a ["",{"text":"\nRandom Item Giver was successfully disabled.","color":"green"},{"text":"\n"},{"text":"[","color":"gray","clickEvent":{"action":"run_command","value":"/datapack enable \"file/random-item-giver-1-0-22-mc-1-16-5.zip\""},"hoverEvent":{"action":"show_text","contents":"Enable the datapack again"}},{"text":"\u27a4","color":"gold","clickEvent":{"action":"run_command","value":"/datapack enable \"file/random-item-giver-1-0-22-mc-1-16-5.zip\""},"hoverEvent":{"action":"show_text","contents":"Enable the datapack again"}},{"text":"]","color":"gray","clickEvent":{"action":"run_command","value":"/datapack enable \"file/random-item-giver-1-0-22-mc-1-16-5.zip\""},"hoverEvent":{"action":"show_text","contents":"Enable the datapack again"}},{"text":" ","clickEvent":{"action":"run_command","value":"/datapack enable \"file/random-item-giver-1-0-22-mc-1-16-5.zip\""},"hoverEvent":{"action":"show_text","contents":"Enable the datapack again"}},{"text":"Click here to enable it again.","color":"gold","clickEvent":{"action":"run_command","value":"/datapack enable \"file/random-item-giver-1-0-22-mc-1-16-5.zip\""},"hoverEvent":{"action":"show_text","contents":"Enable the datapack again"}}]

#Disable Datapack
datapack disable "file/random-item-giver-1-0-22-mc-1-16-5.zip"