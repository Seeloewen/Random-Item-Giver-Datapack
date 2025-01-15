#Disable Command Block feedback to hide 'Executed commands from function' message and schedule enabling it again
gamerule sendCommandFeedback false
schedule function randomitemgiver:reset_feedback 1t

#Change setting
scoreboard players reset RandomItemGiver rig_CommandBlocks
scoreboard players set RandomItemGiver rig_CommandBlocks 2

#Show settings menu again
function randomitemgiver:menus/items

#Post that settings changed successfully
tellraw @a {text: ''}
tellraw @a [{text: '(',color: 'gray'},{text: '✔',color: 'green'},{text: ')',color: 'gray'},{text: ' Successfully enabled Command Blocks',color: 'green'}]
