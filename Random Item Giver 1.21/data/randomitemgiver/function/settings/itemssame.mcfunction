#Disable Command Block feedback to hide 'Executed commands from function' message and schedule enabling it again
gamerule sendCommandFeedback false
schedule function randomitemgiver:reset_feedback 1t

#Change setting
scoreboard players reset RandomItemGiver rig_ItemGiveType
scoreboard players set RandomItemGiver rig_ItemGiveType 1

#Show settings menu again
function randomitemgiver:menus/items

#Post that settings changed successfully
tellraw @a {text: ''}
tellraw @a [{text: '(',color: 'gray'},{text: '✔',color: 'green'},{text: ')',color: 'gray'},{text: ' Successfully set give type to same item',color: 'green'}]
tellraw @a {text: '(⚠) This setting only applies when you have item amount set to 2 or higher.',color: 'gray'}
