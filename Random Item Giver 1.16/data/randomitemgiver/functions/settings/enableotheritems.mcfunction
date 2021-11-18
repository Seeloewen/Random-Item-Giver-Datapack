#Change setting
scoreboard players reset OtherItems
scoreboard players set OtherItems Enabled 2

#Show settings menu again
function randomitemgiver:menus/items

#Post that settings changed successfully
tellraw @a {"text":"Successfully enabled other creative-only items.","color":"green"}