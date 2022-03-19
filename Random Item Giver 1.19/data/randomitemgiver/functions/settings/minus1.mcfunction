#Change setting
scoreboard players remove RandomItemGiver ItemTimer 20
scoreboard players remove RandomItemGiver Seconds 1

#Show settings menu again
function randomitemgiver:menus/settings

#Post that settings changed successfully
tellraw @a {"text":"Successfully removed 1 second from the timer.","color":"red"}