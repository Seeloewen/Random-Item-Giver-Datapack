#Change setting
scoreboard players reset SpawnEggs
scoreboard players set SpawnEggs Enabled 2

#Show settings menu again
function randomitemgiver:menus/items

#Post that settings changed successfully
tellraw @a {"text":"Successfully enabled spawn eggs.","color":"green"}