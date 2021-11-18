#Change setting
scoreboard players reset SpawnEggs
scoreboard players set SpawnEggs Enabled 1

#Show settings menu again
function randomitemgiver:menus/items

#Post that settings changed successfully
tellraw @a {"text":"Successfully disabled spawn eggs.","color":"red"}