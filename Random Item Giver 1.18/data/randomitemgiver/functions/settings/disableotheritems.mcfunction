#Change setting
scoreboard players reset RandomItemGiver OtherItems
scoreboard players set RandomItemGiver OtherItems 1

#Show settings menu again
function randomitemgiver:menus/items

#Post that settings changed successfully
tellraw @a {"text":"Successfully disabled other creative-only items.","color":"red"}