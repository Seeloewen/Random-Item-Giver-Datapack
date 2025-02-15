#Disable Command Block feedback to hide 'Executed commands from function' message and schedule enabling it again
gamerule sendCommandFeedback false
schedule function randomitemgiver:reset_feedback 1t

#Change setting
scoreboard players reset RandomItemGiver rig_ShowItemAmountScoreboard
scoreboard players set RandomItemGiver rig_ShowItemAmountScoreboard 2
scoreboard objectives setdisplay sidebar rig_RandomItemsReceived

#Show settings menu again
function randomitemgiver:menus/settings2

#Post that settings changed successfully
tellraw @a {text: ''}
tellraw @a [{text: '(',color: 'gray'},{text: '✔',color: 'green'},{text: ')',color: 'gray'},{text: ' Successfully enabled Item Amount Scoreboard',color: 'green'}]
