#Change setting
scoreboard players reset CommandBlocks
scoreboard players set CommandBlocks Enabled 1

#Show settings menu again
function randomitemgiver:menus/items

#Post that settings changed successfully
tellraw @a {"text":"Successfully disabled command blocks.","color":"red"}