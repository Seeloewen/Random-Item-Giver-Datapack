#Change setting
scoreboard players reset RandomItemGiver ShowItemMessage
scoreboard players set RandomItemGiver ShowItemMessage 1

#Show settings menu again
function randomitemgiver:menus/settings

#Post that settings changed successfully
tellraw @a {"text":"Successfully disabled item message.","color":"red"}