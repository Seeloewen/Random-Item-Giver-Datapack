#Disable Command Block feedback to hide 'Executed commands from function' message and schedule enabling it again
gamerule sendCommandFeedback false
schedule function randomitemgiver:reset_feedback 1t

#Show settings menu again
function randomitemgiver:menus/settings

#Show timer
tellraw @s ""
tellraw @s [{"text":"(","color":"gray"},{"text":"\u25b6","bold":true,"color":"#4C88F8"},{"text":") ","color":"gray"},{"text":"The Timer is currently set to ","color":"#4C88F8"},{"score":{"name":"RandomItemGiver","objective":"rig_Seconds"},"color":"#4CF5F8"},{"text":" Seconds.","color":"#4CF5F8"}]