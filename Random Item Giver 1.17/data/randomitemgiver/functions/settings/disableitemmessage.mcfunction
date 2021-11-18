#Change setting
scoreboard players reset ShowItemMessage
scoreboard players set ShowItemMessage Enabled 1

#Show settings menu again
function randomitemgiver:menus/settings

#Post that settings changed successfully
tellraw @a {"text":"Successfully disabled item message.","color":"red"}