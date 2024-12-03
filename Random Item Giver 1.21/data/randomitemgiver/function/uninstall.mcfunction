#Disable Command Block feedback to hide 'Executed commands from function' message and schedule enabling it again
gamerule sendCommandFeedback false
schedule function randomitemgiver:reset_feedback 1t

#Remove Scoreboard entrys
scoreboard objectives remove rig_Seconds
scoreboard objectives remove rig_GiveItems
scoreboard objectives remove rig_SpawnEggs
scoreboard objectives remove rig_CommandBlocks
scoreboard objectives remove rig_OtherItems
scoreboard objectives remove rig_ItemTimer
scoreboard objectives remove rig_ShowItemMessage
scoreboard objectives remove rig_ItemGiveType
scoreboard objectives remove rig_ItemGiveAmount
scoreboard objectives remove rig_PlayItemSound
scoreboard objectives remove rig_ShowItemAmountScoreboard
scoreboard objectives remove rig_RandomItemsReceived
scoreboard objectives remove rig_ItemsReceivedTemp
scoreboard objectives remove rig_RandomAmountSameItemsNumber
scoreboard objectives remove rig_MainNumber
scoreboard objectives remove rig_EnchantedBooks
scoreboard objectives remove rig_Potions
scoreboard objectives remove rig_LingeringPotions
scoreboard objectives remove rig_SplashPotions
scoreboard objectives remove rig_TippedArrows
scoreboard objectives remove rig_SuspiciousStews
scoreboard objectives remove rig_GoatHorns
scoreboard objectives remove rig_Paintings
scoreboard objectives remove rig_RandomTime
scoreboard objectives remove rig_Time
scoreboard objectives remove rig_RandomTimeValue
scoreboard objectives remove rig_CanGetItems
scoreboard objectives remove rig_TimerBossbar
scoreboard objectives remove rig_ItemSound
bossbar remove rigtimer

#Post that datapack was disabled
tellraw @a ["",{"text":"\nRandom Item Giver was successfully disabled.","color":"green"},{"text":"\n"},{"text":"[","color":"gray","clickEvent":{"action":"run_command","value":"/datapack enable \"file/random-item-giver-1-5-2-mc-1-21-4.zip\""},"hoverEvent":{"action":"show_text","contents":"Enable the datapack again"}},{"text":"\u27a4","color":"gold","clickEvent":{"action":"run_command","value":"/datapack enable \"file/random-item-giver-1-5-2-mc-1-21-4.zip\""},"hoverEvent":{"action":"show_text","contents":"Enable the datapack again"}},{"text":"]","color":"gray","clickEvent":{"action":"run_command","value":"/datapack enable \"file/random-item-giver-1-5-2-mc-1-21-4.zip\""},"hoverEvent":{"action":"show_text","contents":"Enable the datapack again"}},{"text":" ","clickEvent":{"action":"run_command","value":"/datapack enable \"file/random-item-giver-1-5-2-mc-1-21-4.zip\""},"hoverEvent":{"action":"show_text","contents":"Enable the datapack again"}},{"text":"Click here to enable it again.","color":"gold","clickEvent":{"action":"run_command","value":"/datapack enable \"file/random-item-giver-1-5-2-mc-1-21-4.zip\""},"hoverEvent":{"action":"show_text","contents":"Enable the datapack again"}}]

#Disable Datapack
datapack disable "file/random-item-giver-1-5-2-mc-1-21-4.zip"