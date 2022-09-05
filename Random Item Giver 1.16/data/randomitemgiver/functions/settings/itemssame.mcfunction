#Disable Command Block feedback to hide 'Executed commands from function' message and schedule enabling it again
gamerule sendCommandFeedback false
schedule function randomitemgiver:reset_feedback 1t

#Change setting
scoreboard players reset RandomItemGiver ItemGiveType
scoreboard players set RandomItemGiver ItemGiveType 1

#Show settings menu again
function randomitemgiver:menus/items

#Post that settings changed successfully
tellraw @a ""
tellraw @a {"text":"Successfully set item give type to same item.","color":"green"}
tellraw @a {"text":"This setting only applies if you have set item give amount to 2 or higher.","color":"green"}