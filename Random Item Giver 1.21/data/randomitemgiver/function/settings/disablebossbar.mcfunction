#Disable Command Block feedback to hide 'Executed commands from function' message and schedule enabling it again
gamerule sendCommandFeedback false
schedule function randomitemgiver:reset_feedback 1t

#Change setting
scoreboard players reset RandomItemGiver rig_TimerBossbar
scoreboard players set RandomItemGiver rig_TimerBossbar 1
bossbar set minecraft:rigtimer visible false

#Show settings menu again
function randomitemgiver:menus/settings2

#Post that settings changed successfully
tellraw @a {text: ''}
tellraw @a [{text: '(',color: 'gray'},{text: '✖',color: 'red'},{text: ') ',color: 'gray'},{text: 'Successfully disabled the Timer Bossbar',color: 'red'}]
