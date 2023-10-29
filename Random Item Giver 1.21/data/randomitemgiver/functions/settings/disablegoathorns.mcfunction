#Disable Command Block feedback to hide 'Executed commands from function' message and schedule enabling it again
gamerule sendCommandFeedback false
schedule function randomitemgiver:reset_feedback 1t

#Change setting
scoreboard players reset RandomItemGiver GoatHorns
scoreboard players set RandomItemGiver GoatHorns 1

#Show settings menu again
function randomitemgiver:menus/items

#Post that settings changed successfully
tellraw @a ""
tellraw @a ["",{"text":"(","color":"gray"},{"text":"\u2716","color":"red"},{"text":") ","color":"gray"},{"text":"Successfully disabled Goat Horns","color":"red"}]