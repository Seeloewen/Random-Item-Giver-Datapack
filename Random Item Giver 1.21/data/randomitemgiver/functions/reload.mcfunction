#Disable Command Block feedback to hide 'Executed commands from function' message and schedule enabling it again
gamerule sendCommandFeedback false
schedule function randomitemgiver:reset_feedback 1t

#Add objectives
scoreboard objectives add Seconds dummy
scoreboard objectives add GiveItems dummy
scoreboard objectives add SpawnEggs dummy
scoreboard objectives add CommandBlocks dummy
scoreboard objectives add OtherItems dummy
scoreboard objectives add ItemTimer dummy
scoreboard objectives add ShowItemMessage dummy
scoreboard objectives add ItemGiveType dummy
scoreboard objectives add ItemGiveAmount dummy
scoreboard objectives add PlayItemSound dummy
scoreboard objectives add ShowItemAmountScoreboard dummy
scoreboard objectives add RandomItemsReceived dummy {"text":"Random items received"}
scoreboard objectives add ItemsReceivedTemp dummy
scoreboard objectives add MainNumber dummy
scoreboard objectives add RandomAmountSameItemsNumber dummy
scoreboard objectives add EnchantedBooks dummy
scoreboard objectives add Potions dummy
scoreboard objectives add LingeringPotions dummy
scoreboard objectives add SplashPotions dummy
scoreboard objectives add TippedArrows dummy
scoreboard objectives add SuspiciousStews dummy
scoreboard objectives add GoatHorns dummy
scoreboard objectives add Paintings dummy
scoreboard objectives add RandomTime dummy
scoreboard objectives add RandomTimeValue dummy
scoreboard objectives add Time dummy
scoreboard objectives add CanGetItems dummy
scoreboard objectives add TimerBossbar dummy
scoreboard objectives add ItemSound dummy

#Setup datapack if no settings have been made before
execute unless score RandomItemGiver Seconds matches 1..999999999 run scoreboard players set RandomItemGiver Seconds 15
execute unless score RandomItemGiver GiveItems matches 1..2 run scoreboard players set RandomItemGiver GiveItems 2
execute unless score RandomItemGiver SpawnEggs matches 1..2 run scoreboard players set RandomItemGiver SpawnEggs 2
execute unless score RandomItemGiver CommandBlocks matches 1..2 run scoreboard players set RandomItemGiver CommandBlocks 2
execute unless score RandomItemGiver OtherItems matches 1..2 run scoreboard players set RandomItemGiver OtherItems 2
execute unless score RandomItemGiver Time matches 1..999999999 run scoreboard players set RandomItemGiver Time 300
execute unless score RandomItemGiver ShowItemMessage matches 1..2 run scoreboard players set RandomItemGiver ShowItemMessage 1
execute unless score RandomItemGiver ItemGiveType matches 1..2 run scoreboard players set RandomItemGiver ItemGiveType 1
execute unless score RandomItemGiver ItemGiveAmount matches 1..8 run scoreboard players set RandomItemGiver ItemGiveAmount 1
execute unless score RandomItemGiver PlayItemSound matches 1..2 run scoreboard players set RandomItemGiver PlayItemSound 1
execute unless score RandomItemGiver ShowItemAmountScoreboard matches 1..2 run scoreboard players set RandomItemGiver ShowItemAmountScoreboard 1
execute unless score RandomItemGiver EnchantedBooks matches 1..2 run scoreboard players set RandomItemGiver EnchantedBooks 2 
execute unless score RandomItemGiver Potions matches 1..2 run scoreboard players set RandomItemGiver Potions 2
execute unless score RandomItemGiver LingeringPotions matches 1..2 run scoreboard players set RandomItemGiver LingeringPotions 2
execute unless score RandomItemGiver SplashPotions matches 1..2 run scoreboard players set RandomItemGiver SplashPotions 2
execute unless score RandomItemGiver TippedArrows matches 1..2 run scoreboard players set RandomItemGiver TippedArrows 2
execute unless score RandomItemGiver SuspiciousStews matches 1..2 run scoreboard players set RandomItemGiver SuspiciousStews 2
execute unless score RandomItemGiver GoatHorns matches 1..2 run scoreboard players set RandomItemGiver GoatHorns 2
execute unless score RandomItemGiver Paintings matches 1..2 run scoreboard players set RandomItemGiver Paintings 2
execute unless score RandomItemGiver RandomTime matches 1..2 run scoreboard players set RandomItemGiver RandomTime 1
execute unless score RandomItemGiver TimerBossbar matches 1..2 run scoreboard players set RandomItemGiver TimerBossbar 2
execute unless score RandomItemGiver ItemSound matches 1..5 run scoreboard players set RandomItemGiver ItemSound 1
execute as @a run execute as @s unless score @s CanGetItems matches 1..2 run scoreboard players set @s CanGetItems 2
execute store result score RandomItemGiver RandomTimeValue run random value 1..1200
scoreboard players set RandomItemGiver ItemTimer 0

#Setup the bossbar
bossbar add rigtimer "Next Random Item"
bossbar set minecraft:rigtimer players @a
bossbar set minecraft:rigtimer color red

#Post that datapack is loaded
tellraw @a {"text":""}
tellraw @a {"text":"Random Item Giver 1.5.0-Beta4 was successfully loaded!","color":"green"}
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