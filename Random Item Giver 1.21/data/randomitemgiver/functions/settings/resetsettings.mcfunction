#Disable Command Block feedback to hide 'Executed commands from function' message and schedule enabling it again
gamerule sendCommandFeedback false
schedule function randomitemgiver:reset_feedback 1t

#Reset settings to default values
scoreboard players set RandomItemGiver Seconds 15
scoreboard players set RandomItemGiver GiveItems 2
scoreboard players set RandomItemGiver SpawnEggs 2
scoreboard players set RandomItemGiver CommandBlocks 2
scoreboard players set RandomItemGiver OtherItems 2
scoreboard players set RandomItemGiver Time 300
scoreboard players set RandomItemGiver ShowItemMessage 1
scoreboard players set RandomItemGiver ItemGiveType 1
scoreboard players set RandomItemGiver ItemGiveAmount 1
scoreboard players set RandomItemGiver PlayItemSound 1
scoreboard players set RandomItemGiver ShowItemAmountScoreboard 1
scoreboard players set RandomItemGiver EnchantedBooks 2
scoreboard players set RandomItemGiver Potions 2
scoreboard players set RandomItemGiver LingeringPotions 2
scoreboard players set RandomItemGiver SplashPotions 2
scoreboard players set RandomItemGiver TippedArrows 2
scoreboard players set RandomItemGiver SuspiciousStews 2
scoreboard players set RandomItemGiver GoatHorns 2
scoreboard players set RandomItemGiver Paintings 2
scoreboard players set RandomItemGiver RandomTime 1
scoreboard players set RandomItemGiver TimerBossbar 2
scoreboard players set RandomItemGiver ItemSound 1
execute as @a run scoreboard players set @s CanGetItems 2
bossbar set minecraft:rigtimer visible true
scoreboard objectives setdisplay sidebar

#Show settings menu again
function randomitemgiver:menus/settings3

#Show message that settings were successfully reset
tellraw @a ""
tellraw @s ["",{"text":"(","color":"gray"},{"text":"\u2714","color":"green"},{"text":")","color":"gray"},{"text":" The settings were successfully reset back to their default values.","color":"green"}]
