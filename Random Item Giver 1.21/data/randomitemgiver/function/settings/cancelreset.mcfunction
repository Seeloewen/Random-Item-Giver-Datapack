#Disable Command Block feedback to hide 'Executed commands from function' message and schedule enabling it again
gamerule sendCommandFeedback false
schedule function randomitemgiver:reset_feedback 1t

#Show settings menu again
function randomitemgiver:menus/settings3

#Show the cancel message
tellraw @a ""
tellraw @s ["",{"text":"(","color":"gray"},{"text":"\u2716","color":"red"},{"text":")","color":"gray"},{"text":" The action was cancelled and no settings have been reset.","color":"red"}]