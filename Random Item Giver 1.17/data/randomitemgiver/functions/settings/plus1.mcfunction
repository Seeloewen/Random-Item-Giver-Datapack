#Change setting
scoreboard players add give_item item_timer 20
scoreboard players add Time Seconds 1

#Show settings menu again
function randomitemgiver:menus/settings

#Post that settings changed successfully
tellraw @a {"text":"Successfully added 1 second to the timer.","color":"green"}