#Change setting
scoreboard players add RandomItemGiver ItemTimer 20
scoreboard players add RandomItemGiver Seconds 1

#Show settings menu again
function randomitemgiver:menus/settings

#Post that settings changed successfully
tellraw @a {"text":"Successfully added 1 second to the timer.","color":"green"}