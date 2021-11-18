#Change setting
scoreboard players reset OtherItems
scoreboard players set OtherItems Enabled 1

#Show settings menu again
function randomitemgiver:menus/items

#Post that settings changed successfully
tellraw @a {"text":"Successfully disabled other creative-only items.","color":"red"}