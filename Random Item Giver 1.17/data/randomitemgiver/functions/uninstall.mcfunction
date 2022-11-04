#Remove Scoreboard entrys
scoreboard objectives remove Enabled
scoreboard objectives remove Seconds
scoreboard objectives remove item_timer
scoreboard objectives remove GiveItems

#Post that datapack was disabled
tellraw @a ["",{"text":"Random Item Giver was successfully disabled.","color":"red"},{"text":"\n"},{"text":"Click here to enable it again","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/datapack enable \"file/random-item-giver-1-1-6-mc-1-17-1.zip\""},"hoverEvent":{"action":"show_text","contents":"Enable Random Item Giver"}}]

#Disable Datapack
datapack disable "file/random-item-giver-1-1-6-mc-1-17-1.zip"