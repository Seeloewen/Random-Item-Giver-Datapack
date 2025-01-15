#Disable Command Block feedback to hide 'Executed commands from function' message and schedule enabling it again
gamerule sendCommandFeedback false
schedule function randomitemgiver:reset_feedback 1t

#Change setting
scoreboard players remove RandomItemGiver rig_Time 200
scoreboard players remove RandomItemGiver rig_Seconds 10
execute if score RandomItemGiver rig_Time matches ..0 run scoreboard players set RandomItemGiver rig_Time 0
execute if score RandomItemGiver rig_Time matches ..0 run scoreboard players set RandomItemGiver rig_Seconds 0

#Show settings menu again
function randomitemgiver:menus/settings

#Post that settings changed successfully
tellraw @a {text: ''}
tellraw @a [{text: '(',color: 'gray'},{text: '✖',color: 'red'},{text: ') ',color: 'gray'},{text: 'Successfully removed 10 seconds from the timer.',color: 'red'},{text: ' The timer is now ',color: 'red'},{'score':{'name':'RandomItemGiver','objective':'rig_Seconds'},color: 'red'},{text: ' Seconds.',color: 'red'}]
