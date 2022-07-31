#Change setting
scoreboard players reset RandomItemGiver ShowItemAmount
scoreboard players set RandomItemGiver ShowItemAmount 2
scoreboard objectives setdisplay sidebar RandomItemsRec

#Show settings menu again
function randomitemgiver:menus/settings2

#Post that settings changed successfully
tellraw @a {"text":"Successfully enabled Item Amount Scoreboard.","color":"green"}