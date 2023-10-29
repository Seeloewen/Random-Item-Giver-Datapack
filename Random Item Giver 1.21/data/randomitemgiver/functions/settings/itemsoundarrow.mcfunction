#Disable Command Block feedback to hide 'Executed commands from function' message and schedule enabling it again
gamerule sendCommandFeedback false
schedule function randomitemgiver:reset_feedback 1t

#Change setting
scoreboard players reset RandomItemGiver ItemSound
scoreboard players set RandomItemGiver ItemSound 4
execute as @a at @s run playsound entity.arrow.hit player @p

#Show settings menu again
function randomitemgiver:menus/settings2

#Post that settings changed successfully
tellraw @a ""
tellraw @a ["",{"text":"(","color":"gray"},{"text":"\u2714","color":"green"},{"text":")","color":"gray"},{"text":" Successfully set Item Sound to 'Arrow'","color":"green"}]