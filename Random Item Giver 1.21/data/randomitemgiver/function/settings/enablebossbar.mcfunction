#Disable Command Block feedback to hide 'Executed commands from function' message and schedule enabling it again
gamerule sendCommandFeedback false
schedule function randomitemgiver:reset_feedback 1t

#Change setting
scoreboard players reset RandomItemGiver rig_TimerBossbar
scoreboard players set RandomItemGiver rig_TimerBossbar 2
bossbar set minecraft:rigtimer visible true

#Show settings menu again
function randomitemgiver:menus/settings2

#Post that settings changed successfully
tellraw @a {text: ''}
tellraw @a [{text: '(',color: 'gray'},{text: '✔',color: 'green'},{text: ')',color: 'gray'},{text: ' Successfully enabled the Timer Bossbar',color: 'green'}]
