#Disable Command Block feedback to hide 'Executed commands from function' message and schedule enabling it again
gamerule sendCommandFeedback false
schedule function randomitemgiver:reset_feedback 1t

#Change setting
scoreboard players reset RandomItemGiver rig_ItemSound
scoreboard players set RandomItemGiver rig_ItemSound 1
execute as @a at @s run playsound entity.item.pickup player @p

#Show settings menu again
function randomitemgiver:menus/settings2

#Post that settings changed successfully
tellraw @a {text: ''}
tellraw @a [{text: '(',color: 'gray'},{text: '✔',color: 'green'},{text: ')',color: 'gray'},{text: ' Successfully set Item Sound to `Plop`',color: 'green'}]
