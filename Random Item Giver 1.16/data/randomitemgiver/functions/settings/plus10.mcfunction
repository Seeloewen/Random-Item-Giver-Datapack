#Change setting
scoreboard players add give_item item_timer 200
scoreboard players add Time Seconds 10

#Show settings menu again
function randomitemgiver:menus/settings

#Post that settings changed successfully
tellraw @a {"text":"Successfully added 10 seconds to the timer.","color":"green"}