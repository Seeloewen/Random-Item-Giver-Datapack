#Disable Command Block feedback to hide 'Executed commands from function' message and schedule enabling it again
gamerule sendCommandFeedback false
schedule function randomitemgiver:reset_feedback 1t

#Change setting
scoreboard players remove RandomItemGiver Time 20
scoreboard players remove RandomItemGiver Seconds 1

#Show settings menu again
function randomitemgiver:menus/settings

#Post that settings changed successfully
tellraw @a ""
tellraw @a ["",{"text":"(","color":"gray"},{"text":"\u2716","color":"red"},{"text":") ","color":"gray"},{"text":"Successfully removed 1 second from the timer","color":"red"}]