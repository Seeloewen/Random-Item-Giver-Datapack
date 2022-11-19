#Disable Command Block feedback to hide 'Executed commands from function' message and schedule enabling it again
gamerule sendCommandFeedback false
schedule function randomitemgiver:reset_feedback 1t

#Change setting
scoreboard players reset RandomItemGiver OtherItems
scoreboard players set RandomItemGiver OtherItems 2

#Show settings menu again
function randomitemgiver:menus/items

#Post that settings changed successfully
tellraw @a ""
tellraw @a ["",{"text":"(","color":"gray"},{"text":"\u2714","color":"green"},{"text":")","color":"gray"},{"text":" Successfully enabled other Creative-Only Items","color":"green"}]