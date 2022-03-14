#Change setting
scoreboard players reset RandomItemGiver GiveItems
scoreboard players set RandomItemGiver GiveItems 2

#Show settings menu again
function randomitemgiver:menus/settings

#Post that settings changed successfully
tellraw @a {"text":"Successfully continued the datapack.","color":"green"}