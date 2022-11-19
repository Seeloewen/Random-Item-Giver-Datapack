#Disable Command Block feedback to hide 'Executed commands from function' message and schedule enabling it again
gamerule sendCommandFeedback false
schedule function randomitemgiver:reset_feedback 1t

#Change setting
scoreboard players reset RandomItemGiver ItemGiveAmount
scoreboard players set RandomItemGiver ItemGiveAmount 8

#Show settings menu again
function randomitemgiver:menus/items

#Post that settings changed successfully
tellraw @a ""
tellraw @a ["",{"text":"(","color":"gray"},{"text":"\u2714","color":"green"},{"text":")","color":"gray"},{"text":" Successfully set item amount to random (Between 1 - 64)","color":"green"}]
execute if score RandomItemGiver ItemGiveType matches 1 run tellraw @a {"text":"(\u26a0) Please note that using this setting does not count the received items correctly on 1.16 when Item Give Type is set to \"Same items\".","color":"gold"}