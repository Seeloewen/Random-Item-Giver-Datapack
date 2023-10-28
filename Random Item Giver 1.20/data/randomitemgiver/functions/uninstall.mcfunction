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
scoreboard objectives remove RandomAmountSameItemsNumber
scoreboard objectives remove MainNumber
scoreboard objectives remove EnchantedBooks
scoreboard objectives remove Potions
scoreboard objectives remove LingeringPotions
scoreboard objectives remove SplashPotions
scoreboard objectives remove TippedArrows
scoreboard objectives remove SuspiciousStews
scoreboard objectives remove GoatHorns
scoreboard objectives remove Paintings
scoreboard objectives remove RandomTime
scoreboard objectives remove Time
scoreboard objectives remove RandomTimeValue
scoreboard objectives remove CanGetItems
scoreboard objectives remove TimerBossbar
scoreboard objectives remove ItemSound

#Post that datapack was disabled
tellraw @a ["",{"text":"\nRandom Item Giver was successfully disabled.","color":"green"},{"text":"\n"},{"text":"[","color":"gray","clickEvent":{"action":"run_command","value":"/datapack enable \"file/random-item-giver-1-4-1-mc-1-20-1.zip\""},"hoverEvent":{"action":"show_text","contents":"Enable the datapack again"}},{"text":"\u27a4","color":"gold","clickEvent":{"action":"run_command","value":"/datapack enable \"file/random-item-giver-1-4-1-mc-1-20-1.zip\""},"hoverEvent":{"action":"show_text","contents":"Enable the datapack again"}},{"text":"]","color":"gray","clickEvent":{"action":"run_command","value":"/datapack enable \"file/random-item-giver-1-4-1-mc-1-20-1.zip\""},"hoverEvent":{"action":"show_text","contents":"Enable the datapack again"}},{"text":" ","clickEvent":{"action":"run_command","value":"/datapack enable \"file/random-item-giver-1-4-1-mc-1-20-1.zip\""},"hoverEvent":{"action":"show_text","contents":"Enable the datapack again"}},{"text":"Click here to enable it again.","color":"gold","clickEvent":{"action":"run_command","value":"/datapack enable \"file/random-item-giver-1-4-1-mc-1-20-1.zip\""},"hoverEvent":{"action":"show_text","contents":"Enable the datapack again"}}]

#Disable Datapack
datapack disable "file/random-item-giver-1-4-1-mc-1-20-1.zip"