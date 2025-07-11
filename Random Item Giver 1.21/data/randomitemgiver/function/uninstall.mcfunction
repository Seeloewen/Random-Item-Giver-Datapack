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
tellraw @a {text: ''}
tellraw @a [{text: 'Random Item Giver was successfully disabled.',color: 'green'}]
tellraw @a [{text: '[',color: 'gray',click_event:{'action':'run_command', command: '/datapack enable \'file/random-item-giver-1-5-5-mc-1-21-7.zip\''},hover_event:{action: 'show_text', value: 'Enable the datapack again'}},{text: '➤',color: 'gold',click_event:{'action':'run_command', command: '/datapack enable \'file/random-item-giver-1-5-5-mc-1-21-7.zip\''},hover_event:{action: 'show_text', value: 'Enable the datapack again'}},{text: ']',color: 'gray',click_event:{'action':'run_command', command: '/datapack enable \'file/random-item-giver-1-5-5-mc-1-21-7.zip\''},hover_event:{action: 'show_text', value: 'Enable the datapack again'}},{text: ' ',click_event:{'action':'run_command', command: '/datapack enable \'file/random-item-giver-1-5-5-mc-1-21-7.zip\''},hover_event:{action: 'show_text', value: 'Enable the datapack again'}},{text: 'Click here to enable it again.',color: 'gold',click_event:{'action':'run_command', command: '/datapack enable \'file/random-item-giver-1-5-5-mc-1-21-7.zip\''},hover_event:{action: 'show_text', value: 'Enable the datapack again'}}]

#Disable Datapack
datapack disable "file/random-item-giver-1-5-5-mc-1-21-7.zip"
