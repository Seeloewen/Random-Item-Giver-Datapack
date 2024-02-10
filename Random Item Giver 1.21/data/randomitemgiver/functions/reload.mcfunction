#Disable Command Block feedback to hide 'Executed commands from function' message and schedule enabling it again
gamerule sendCommandFeedback false
schedule function randomitemgiver:reset_feedback 1t

#Add objectives
scoreboard objectives add rig_Seconds dummy
scoreboard objectives add rig_GiveItems dummy
scoreboard objectives add rig_SpawnEggs dummy
scoreboard objectives add rig_CommandBlocks dummy
scoreboard objectives add rig_OtherItems dummy
scoreboard objectives add rig_ItemTimer dummy
scoreboard objectives add rig_ShowItemMessage dummy
scoreboard objectives add rig_ItemGiveType dummy
scoreboard objectives add rig_ItemGiveAmount dummy
scoreboard objectives add rig_PlayItemSound dummy
scoreboard objectives add rig_ShowItemAmountScoreboard dummy
scoreboard objectives add rig_RandomItemsReceived dummy {"text":"Random items received"}
scoreboard objectives add rig_ItemsReceivedTemp dummy
scoreboard objectives add rig_MainNumber dummy
scoreboard objectives add rig_RandomAmountSameItemsNumber dummy
scoreboard objectives add rig_EnchantedBooks dummy
scoreboard objectives add rig_Potions dummy
scoreboard objectives add rig_LingeringPotions dummy
scoreboard objectives add rig_SplashPotions dummy
scoreboard objectives add rig_TippedArrows dummy
scoreboard objectives add rig_SuspiciousStews dummy
scoreboard objectives add rig_GoatHorns dummy
scoreboard objectives add rig_Paintings dummy
scoreboard objectives add rig_RandomTime dummy
scoreboard objectives add rig_RandomTimeValue dummy
scoreboard objectives add rig_Time dummy
scoreboard objectives add rig_CanGetItems dummy
scoreboard objectives add rig_TimerBossbar dummy
scoreboard objectives add rig_ItemSound dummy

#Setup datapack if no settings have been made before
execute unless score RandomItemGiver rig_Seconds matches 0..999999999 run scoreboard players set RandomItemGiver rig_Seconds 15
execute unless score RandomItemGiver rig_GiveItems matches 1..2 run scoreboard players set RandomItemGiver rig_GiveItems 2
execute unless score RandomItemGiver rig_SpawnEggs matches 1..2 run scoreboard players set RandomItemGiver rig_SpawnEggs 2
execute unless score RandomItemGiver rig_CommandBlocks matches 1..2 run scoreboard players set RandomItemGiver rig_CommandBlocks 2
execute unless score RandomItemGiver rig_OtherItems matches 1..2 run scoreboard players set RandomItemGiver rig_OtherItems 2
execute unless score RandomItemGiver rig_Time matches 0..999999999 run scoreboard players set RandomItemGiver rig_Time 300
execute unless score RandomItemGiver rig_ShowItemMessage matches 1..2 run scoreboard players set RandomItemGiver rig_ShowItemMessage 1
execute unless score RandomItemGiver rig_ItemGiveType matches 1..2 run scoreboard players set RandomItemGiver rig_ItemGiveType 1
execute unless score RandomItemGiver rig_ItemGiveAmount matches 1..8 run scoreboard players set RandomItemGiver rig_ItemGiveAmount 1
execute unless score RandomItemGiver rig_PlayItemSound matches 1..2 run scoreboard players set RandomItemGiver rig_PlayItemSound 1
execute unless score RandomItemGiver rig_ShowItemAmountScoreboard matches 1..2 run scoreboard players set RandomItemGiver rig_ShowItemAmountScoreboard 1
execute unless score RandomItemGiver rig_EnchantedBooks matches 1..2 run scoreboard players set RandomItemGiver rig_EnchantedBooks 2 
execute unless score RandomItemGiver rig_Potions matches 1..2 run scoreboard players set RandomItemGiver rig_Potions 2
execute unless score RandomItemGiver rig_LingeringPotions matches 1..2 run scoreboard players set RandomItemGiver rig_LingeringPotions 2
execute unless score RandomItemGiver rig_SplashPotions matches 1..2 run scoreboard players set RandomItemGiver rig_SplashPotions 2
execute unless score RandomItemGiver rig_TippedArrows matches 1..2 run scoreboard players set RandomItemGiver rig_TippedArrows 2
execute unless score RandomItemGiver rig_SuspiciousStews matches 1..2 run scoreboard players set RandomItemGiver rig_SuspiciousStews 2
execute unless score RandomItemGiver rig_GoatHorns matches 1..2 run scoreboard players set RandomItemGiver rig_GoatHorns 2
execute unless score RandomItemGiver rig_Paintings matches 1..2 run scoreboard players set RandomItemGiver rig_Paintings 2
execute unless score RandomItemGiver rig_RandomTime matches 1..2 run scoreboard players set RandomItemGiver rig_RandomTime 1
execute unless score RandomItemGiver rig_TimerBossbar matches 1..2 run scoreboard players set RandomItemGiver rig_TimerBossbar 2
execute unless score RandomItemGiver rig_ItemSound matches 1..5 run scoreboard players set RandomItemGiver rig_ItemSound 1
execute as @a run execute as @s unless score @s rig_CanGetItems matches 1..2 run scoreboard players set @s rig_CanGetItems 2
execute store result score RandomItemGiver rig_RandomTimeValue run random value 1..1200
scoreboard players set RandomItemGiver rig_ItemTimer 0

#Setup the bossbar
bossbar add rigtimer {"text":"Next Random Item","color":"red"}
bossbar set minecraft:rigtimer players @a
bossbar set minecraft:rigtimer color red

#Post that datapack is loaded
tellraw @a {"text":""}
tellraw @a {"text":"Random Item Giver 1.5.0-Beta8 was successfully loaded!","color":"green"}
tellraw @a ["",{"text":"[","color":"gray","clickEvent":{"action":"run_command","value":"/function randomitemgiver:menus/menu"},"hoverEvent":{"action":"show_text","contents":"Open the main menu"}},{"text":"\u27a4","color":"green","clickEvent":{"action":"run_command","value":"/function randomitemgiver:menus/menu"},"hoverEvent":{"action":"show_text","contents":"Open the main menu"}},{"text":"]","color":"gray","clickEvent":{"action":"run_command","value":"/function randomitemgiver:menus/menu"},"hoverEvent":{"action":"show_text","contents":"Open the main menu"}},{"text":" ","clickEvent":{"action":"run_command","value":"/function randomitemgiver:menus/menu"},"hoverEvent":{"action":"show_text","contents":"Open the main menu"}},{"text":"Click here to open the menu","color":"green","clickEvent":{"action":"run_command","value":"/function randomitemgiver:menus/menu"},"hoverEvent":{"action":"show_text","contents":"Open the main menu"}},{"text":"\n "}]
tellraw @a ["",{"text":"(","color":"gray"},{"text":"\u26a0","color":"gold"},{"text":") ","color":"gray"},{"text":"You are using a Beta version of the Random Item Giver Datapack. Please report any issue you can find!","color":"gold"}]

#######################
# Score explainations #
#######################

#Seconds: Must be between 1 and 999999999
#GiveItems: Score 2 means "enabled", score 1 "disabled"
#SpawnEggs: Score 2 means "enabled", score 1 "disabled"
#CommandBlocks: Score 2 means "enabled", score 1 "disabled"
#OtherItems: Score 2 means "enabled", score 1 "disabled"
#Time: Must be between 1 and 999999999
#ShowItemMessage: Score 2 means "enabled", score 1 "disabled"
#ItemGiveType: 1 means "same item", 2 means "different item"
#ItemGiveAmount: 1 means "1 item", 2 means "2 items", 3 means "3 items", 4 means "5 items", 5 means "10 items", 6 means "32 items", 7 means "64 items", 8 means "Random amount between 1 and 64"
#ShowItemAmountScoreboard: Score 2 means "enabled", score 1 "disabled"
#RandomItemsReceived: Must be between 1 and 999999999
#ItemsReceivedTemp: Temporary store for the amount of items received when the type is set to "random amount of different item between 1 and 64"
#MainNumber: Store for random number that decides which loot table gets selected in the main file
#RandomAmountSameItemsNumber: Store for random number that decides the amount of items from the Random Amount Same Items loot table
#EnchantedBooks: Score 2 means "enabled", score 1 "disabled"
#Potions: Score 2 means "enabled", score 1 "disabled"
#LingeringPotions: Score 2 means "enabled", score 1 "disabled"
#SplashPotions: Score 2 means "enabled", score 1 "disabled"
#TippedArrows: Score 2 means "enabled", score 1 "disabled"
#SuspiciousStews: Score 2 means "enabled", score 1 "disabled"
#GoatHorns: Score 2 means "enabled", score 1 "disabled"
#Paintings: Score 2 means "enabled", score 1 "disabled"
#RandomTime: Score 2 means "enabled", score 1 "disabled"
#RandomTimeValue: Stores the time if "RandomTime" is enabled
#ItemTimer: Stores the time if "RandomTime" is disabled
#CanGetItems: For each individual player, score 2 means "enabled", score 1 "disabled"
#TimerBossbar: Score 2 means "enabled", score 1 "disabled"
#ItemSound: Score 1 means "Plop", score 2 means "Bell", score 3 means "Amethyst", score 4 means "Arrow", score 5 means "Experience"