#Change setting
scoreboard players reset RandomItemGiver ShowItemAmountScoreboard
scoreboard players set RandomItemGiver ShowItemAmountScoreboard 2
scoreboard objectives setdisplay sidebar RandomItemsReceived

#Show settings menu again
function randomitemgiver:menus/settings2

#Post that settings changed successfully
tellraw @a {"text":"Successfully enabled Item Amount Scoreboard.","color":"green"}