#Disable Command Block feedback to hide 'Executed commands from function' message and schedule enabling it again
gamerule sendCommandFeedback false
schedule function randomitemgiver:reset_feedback 1t

#Show confirmation message
tellraw @s {text: ''}
tellraw @s {text: ""}

