#Disable Command Block feedback to hide 'Executed commands from function' message and schedule enabling it again
gamerule sendCommandFeedback false
schedule function randomitemgiver:reset_feedback 1t

#Change setting
scoreboard players reset RandomItemGiver ShowItemAmount
scoreboard players set RandomItemGiver ShowItemAmount 2
scoreboard objectives setdisplay sidebar RandomItemsRec

#Show settings menu again
function randomitemgiver:menus/settings2

#Post that settings changed successfully
tellraw @a ""
tellraw @a {"text":"Successfully enabled Item Amount Scoreboard.","color":"green"}