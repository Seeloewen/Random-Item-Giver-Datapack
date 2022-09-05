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
tellraw @a {"text":"Successfully set item give amount to random (between 1 and 64).","color":"green"}
execute if score RandomItemGiver ItemGiveType matches 1 run tellraw @a {"text":"Please note that this using this setting does not count the received items correctly on 1.16 when Item Give Type is set to \"Same items\".","color":"gold"}