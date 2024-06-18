#Disable Command Block feedback to hide 'Executed commands from function' message and schedule enabling it again
gamerule sendCommandFeedback false
schedule function randomitemgiver:reset_feedback 1t

#Reset settings to default values
scoreboard players set RandomItemGiver rig_Seconds 15
scoreboard players set RandomItemGiver rig_GiveItems 2
scoreboard players set RandomItemGiver rig_SpawnEggs 2
scoreboard players set RandomItemGiver rig_CommandBlocks 2
scoreboard players set RandomItemGiver rig_OtherItems 2
scoreboard players set RandomItemGiver rig_Time 300
scoreboard players set RandomItemGiver rig_ShowItemMessage 1
scoreboard players set RandomItemGiver rig_ItemGiveType 1
scoreboard players set RandomItemGiver rig_ItemGiveAmount 1
scoreboard players set RandomItemGiver rig_PlayItemSound 1
scoreboard players set RandomItemGiver rig_ShowItemAmountScoreboard 1
scoreboard players set RandomItemGiver rig_EnchantedBooks 2
scoreboard players set RandomItemGiver rig_Potions 2
scoreboard players set RandomItemGiver rig_LingeringPotions 2
scoreboard players set RandomItemGiver rig_SplashPotions 2
scoreboard players set RandomItemGiver rig_TippedArrows 2
scoreboard players set RandomItemGiver rig_SuspiciousStews 2
scoreboard players set RandomItemGiver rig_GoatHorns 2
scoreboard players set RandomItemGiver rig_Paintings 2
scoreboard players set RandomItemGiver rig_RandomTime 1
scoreboard players set RandomItemGiver rig_TimerBossbar 2
scoreboard players set RandomItemGiver rig_ItemSound 1
execute as @a run scoreboard players set @s rig_CanGetItems 2
bossbar set minecraft:rigtimer visible true
scoreboard objectives setdisplay sidebar

#Show settings menu again
function randomitemgiver:menus/settings3

#Show message that settings were successfully reset
tellraw @a ""
tellraw @s ["",{"text":"(","color":"gray"},{"text":"\u2714","color":"green"},{"text":")","color":"gray"},{"text":" The settings were successfully reset back to their default values.","color":"green"}]
