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
scoreboard objectives remove ShowItemAmountScoreboard
scoreboard objectives remove RandomItemsReceived
scoreboard objectives remove ItemsReceivedTemp
scoreboard objectives remove RandomAmountSameItemsGen
scoreboard objectives remove MainGen

#Post that datapack was disabled
tellraw @a ["",{"text":"\nRandom Item Giver was successfully disabled.","color":"green"},{"text":"\n"},{"text":"[","color":"gray","clickEvent":{"action":"run_command","value":"/datapack enable \"file/random-item-giver-1-4-0-Beta10-mc-23w12a.zip\""},"hoverEvent":{"action":"show_text","contents":"Enable the datapack again"}},{"text":"\u27a4","color":"gold","clickEvent":{"action":"run_command","value":"/datapack enable \"file/random-item-giver-1-4-0-Beta10-mc-23w12a.zip\""},"hoverEvent":{"action":"show_text","contents":"Enable the datapack again"}},{"text":"]","color":"gray","clickEvent":{"action":"run_command","value":"/datapack enable \"file/random-item-giver-1-4-0-Beta10-mc-23w12a.zip\""},"hoverEvent":{"action":"show_text","contents":"Enable the datapack again"}},{"text":" ","clickEvent":{"action":"run_command","value":"/datapack enable \"file/random-item-giver-1-4-0-Beta10-mc-23w12a.zip\""},"hoverEvent":{"action":"show_text","contents":"Enable the datapack again"}},{"text":"Click here to enable it again.","color":"gold","clickEvent":{"action":"run_command","value":"/datapack enable \"file/random-item-giver-1-4-0-Beta10-mc-23w12a.zip\""},"hoverEvent":{"action":"show_text","contents":"Enable the datapack again"}}]

#Disable Datapack
datapack disable "file/random-item-giver-1-4-0-Beta10-mc-23w12a.zip"