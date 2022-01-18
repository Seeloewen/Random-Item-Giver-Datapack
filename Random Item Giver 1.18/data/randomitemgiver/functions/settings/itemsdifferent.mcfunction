#Change setting
scoreboard players reset RandomItemGiver ItemGiveType
scoreboard players set RandomItemGiver ItemGiveType 2

#Show settings menu again
function randomitemgiver:menus/items

#Post that settings changed successfully
tellraw @a {"text":"Successfully set item give type to different/random items.","color":"green"}
tellraw @a {"text":"This setting only applies if you have set item give amount to 2 or higher.","color":"green"}