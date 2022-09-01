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
tellraw @a ["",{"text":"Random Item Giver was successfully disabled.","color":"red"},{"text":"\n"},{"text":"Click here to enable it again","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/datapack enable \"file/random-item-giver-1-3-1-mc-1-19-1.zip\""},"hoverEvent":{"action":"show_text","contents":"Enable Random Item Giver"}}]

#Disable Datapack
datapack disable "file/random-item-giver-1-3-1-mc-1-19-1.zip"