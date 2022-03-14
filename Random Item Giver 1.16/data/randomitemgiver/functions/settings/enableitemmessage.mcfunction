#Change setting
scoreboard players reset RandomItemGiver ShowItemMessage
scoreboard players set RandomItemGiver ShowItemMessage 2

#Show settings menu again
function randomitemgiver:menus/settings

#Post that settings changed successfully
tellraw @a {"text":"Successfully enabled item message.","color":"green"}