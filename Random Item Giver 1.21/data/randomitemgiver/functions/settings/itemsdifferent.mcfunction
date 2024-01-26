#Disable Command Block feedback to hide 'Executed commands from function' message and schedule enabling it again
gamerule sendCommandFeedback false
schedule function randomitemgiver:reset_feedback 1t

#Change setting
scoreboard players reset RandomItemGiver rig_ItemGiveType
scoreboard players set RandomItemGiver rig_ItemGiveType 2

#Show settings menu again
function randomitemgiver:menus/items

#Post that settings changed successfully
tellraw @a ""
tellraw @a ["",{"text":"(","color":"gray"},{"text":"\u2714","color":"green"},{"text":")","color":"gray"},{"text":" Successfully set give type to random/different items","color":"green"}]
tellraw @a {"text":"(\u26a0) This setting only applies when you have item amount set to 2 or higher.","color":"gray"}