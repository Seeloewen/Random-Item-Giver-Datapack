#Disable Command Block feedback to hide 'Executed commands from function' message and schedule enabling it again
gamerule sendCommandFeedback false
schedule function randomitemgiver:reset_feedback 1t

#Change setting
scoreboard players reset RandomItemGiver PlayItemSound
scoreboard players set RandomItemGiver PlayItemSound 2

#Show settings menu again
function randomitemgiver:menus/settings

#Post that settings changed successfully
tellraw @a ""
tellraw @a {"text":"Successfully enabled item sound.","color":"green"}