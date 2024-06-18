#Disable Command Block feedback to hide 'Executed commands from function' message and schedule enabling it again
gamerule sendCommandFeedback false
schedule function randomitemgiver:reset_feedback 1t

#Change setting
scoreboard players reset RandomItemGiver rig_RandomTime
scoreboard players set RandomItemGiver rig_RandomTime 1

#Show settings menu again
function randomitemgiver:menus/settings

#Post that settings changed successfully
tellraw @a ""
tellraw @a ["",{"text":"(","color":"gray"},{"text":"\u2716","color":"red"},{"text":") ","color":"gray"},{"text":"Successfully disabled Random Time. You will now get your items like configured by the timer settings above.","color":"red"}]