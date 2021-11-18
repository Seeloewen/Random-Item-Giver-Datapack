#Change setting
scoreboard players remove give_item item_timer 200
scoreboard players remove Time Seconds 10

#Show settings menu again
function randomitemgiver:menus/settings

#Post that settings changed successfully
tellraw @a {"text":"Successfully removed 10 seconds from the timer.","color":"red"}