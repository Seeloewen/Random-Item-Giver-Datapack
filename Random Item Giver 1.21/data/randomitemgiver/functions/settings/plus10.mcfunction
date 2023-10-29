#Disable Command Block feedback to hide 'Executed commands from function' message and schedule enabling it again
gamerule sendCommandFeedback false
schedule function randomitemgiver:reset_feedback 1t

#Change setting
scoreboard players add RandomItemGiver Time 200
scoreboard players add RandomItemGiver Seconds 10

#Show settings menu again
function randomitemgiver:menus/settings

#Post that settings changed successfully
tellraw @a ""
tellraw @a ["",{"text":"(","color":"gray"},{"text":"\u2714","color":"green"},{"text":")","color":"gray"},{"text":" Successfully added 10 seconds to the timer","color":"green"}]