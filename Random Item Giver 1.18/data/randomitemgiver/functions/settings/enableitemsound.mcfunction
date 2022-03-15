#Change setting
scoreboard players reset RandomItemGiver PlayItemSound
scoreboard players set RandomItemGiver PlayItemSound 2

#Show settings menu again
function randomitemgiver:menus/settings

#Post that settings changed successfully
tellraw @a {"text":"Successfully enabled item sound.","color":"green"}