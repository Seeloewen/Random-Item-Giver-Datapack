#Change setting
scoreboard players reset RandomItemGiverPack
scoreboard players set RandomItemGiverPack GiveItems 1

#Show settings menu again
function randomitemgiver:menus/settings

#Post that settings changed successfully
tellraw @a {"text":"Successfully paused the datapack.","color":"red"}