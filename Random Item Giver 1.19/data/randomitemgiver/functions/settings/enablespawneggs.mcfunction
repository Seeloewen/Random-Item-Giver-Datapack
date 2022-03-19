#Change setting
scoreboard players reset RandomItemGiver SpawnEggs
scoreboard players set RandomItemGiver SpawnEggs 2

#Show settings menu again
function randomitemgiver:menus/items

#Post that settings changed successfully
tellraw @a {"text":"Successfully enabled spawn eggs.","color":"green"}