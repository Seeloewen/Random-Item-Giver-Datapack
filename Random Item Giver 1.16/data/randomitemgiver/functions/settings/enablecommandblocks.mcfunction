#Change setting
scoreboard players reset CommandBlocks
scoreboard players set CommandBlocks Enabled 2

#Show settings menu again
function randomitemgiver:menus/items

#Post that settings changed successfully
tellraw @a {"text":"Successfully enabled command blocks.","color":"green"}