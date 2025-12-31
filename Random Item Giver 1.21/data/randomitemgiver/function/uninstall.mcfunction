#Disable Command Block feedback to hide 'Executed commands from function' message and schedule enabling it again
gamerule send_command_feedback false
schedule function randomitemgiver:reset_feedback 1t

#Remove Scoreboard entrys
scoreboard objectives remove tempConversion
scoreboard objectives remove internalTimer
scoreboard objectives remove randomItemsReceived
scoreboard objectives remove rolledItemId
scoreboard objectives remove rolledRandomAmount
scoreboard objectives remove randomTimeValue
scoreboard objectives remove canGetItems
bossbar remove rigtimer

#Post that datapack was disabled
tellraw @a {text: ''}
tellraw @a [{text: 'Random Item Giver was successfully disabled.',color: 'green'}]
tellraw @a [{text: '[',color: 'gray',click_event:{'action':'run_command', command: '/datapack enable \'file/random-item-giver-1-5-6-Beta1-mc-1-21-10.zip\''},hover_event:{action: 'show_text', value: 'Enable the datapack again'}},{text: '➤',color: 'gold',click_event:{'action':'run_command', command: '/datapack enable \'file/random-item-giver-1-5-6-Beta1-mc-1-21-10.zip\''},hover_event:{action: 'show_text', value: 'Enable the datapack again'}},{text: ']',color: 'gray',click_event:{'action':'run_command', command: '/datapack enable \'file/random-item-giver-1-5-6-Beta1-mc-1-21-10.zip\''},hover_event:{action: 'show_text', value: 'Enable the datapack again'}},{text: ' ',click_event:{'action':'run_command', command: '/datapack enable \'file/random-item-giver-1-5-6-Beta1-mc-1-21-10.zip\''},hover_event:{action: 'show_text', value: 'Enable the datapack again'}},{text: 'Click here to enable it again.',color: 'gold',click_event:{'action':'run_command', command: '/datapack enable \'file/random-item-giver-1-5-6-Beta1-mc-1-21-10.zip\''},hover_event:{action: 'show_text', value: 'Enable the datapack again'}}]

#Disable Datapack
datapack disable "file/random-item-giver-1-5-6-Beta1-mc-1-21-10.zip"
