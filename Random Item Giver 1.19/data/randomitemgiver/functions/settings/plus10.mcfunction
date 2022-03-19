#Change setting
scoreboard players add RandomItemGiver ItemTimer 200
scoreboard players add RandomItemGiver Seconds 10

#Show settings menu again
function randomitemgiver:menus/settings

#Post that settings changed successfully
tellraw @a {"text":"Successfully added 10 seconds to the timer.","color":"green"}