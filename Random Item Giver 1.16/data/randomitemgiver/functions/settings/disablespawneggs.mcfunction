#Change setting
scoreboard players reset RandomItemGiver SpawnEggs
scoreboard players set RandomItemGiver SpawnEggs 1

#Show settings menu again
function randomitemgiver:menus/items

#Post that settings changed successfully
tellraw @a {"text":"Successfully disabled spawn eggs.","color":"red"}