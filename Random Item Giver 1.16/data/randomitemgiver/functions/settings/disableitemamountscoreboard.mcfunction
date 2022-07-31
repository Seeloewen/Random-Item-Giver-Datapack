#Change setting
scoreboard players reset RandomItemGiver ShowItemAmount
scoreboard players set RandomItemGiver ShowItemAmount 1
scoreboard objectives setdisplay sidebar

#Show settings menu again
function randomitemgiver:menus/settings2

#Post that settings changed successfully
tellraw @a {"text":"Successfully disabled Item Amount Scoreboard.","color":"red"}