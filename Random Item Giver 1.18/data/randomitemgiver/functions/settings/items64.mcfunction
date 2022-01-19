#Change setting
scoreboard players reset RandomItemGiver ItemGiveAmount
scoreboard players set RandomItemGiver ItemGiveAmount 7

#Show settings menu again
function randomitemgiver:menus/items

#Post that settings changed successfully
tellraw @a {"text":"Successfully set item give amount to 64.","color":"green"}