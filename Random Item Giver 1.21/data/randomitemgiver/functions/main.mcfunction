#Make everyone able to get items if there's no specific setting yet
execute as @a run execute as @s unless score @s CanGetItems matches 1..2 run scoreboard players set @s CanGetItems 2

#Setup the bossbar
bossbar add rigtimer "Next Random Item"
bossbar set minecraft:rigtimer players @a
bossbar set minecraft:rigtimer color red
execute unless score RandomItemGiver Time matches ..0 if score RandomItemGiver GiveItems matches 2 if score RandomItemGiver RandomTime matches 1 store result bossbar minecraft:rigtimer max run scoreboard players get RandomItemGiver Time
execute unless score RandomItemGiver RandomTimeValue matches ..0 if score RandomItemGiver GiveItems matches 2 if score RandomItemGiver RandomTime matches 2 store result bossbar minecraft:rigtimer max run scoreboard players get RandomItemGiver RandomTimeValue
execute if score RandomItemGiver GiveItems matches 2 store result bossbar minecraft:rigtimer value run scoreboard players get RandomItemGiver ItemTimer

#Add dummy boolean (0 = false, 1 = true)
scoreboard objectives add GiveItemNow dummy
scoreboard players set RandomItemGiver GiveItemNow 0

#Check for time if set to random
execute if score RandomItemGiver RandomTime matches 2 run scoreboard players add RandomItemGiver ItemTimer 1
execute if score RandomItemGiver RandomTime matches 2 if score RandomItemGiver ItemTimer >= RandomItemGiver RandomTimeValue run scoreboard players set RandomItemGiver GiveItemNow 1
execute if score RandomItemGiver RandomTime matches 2 if score RandomItemGiver ItemTimer >= RandomItemGiver RandomTimeValue run scoreboard players set RandomItemGiver ItemTimer 0
execute if score RandomItemGiver RandomTime matches 2 if score RandomItemGiver GiveItemNow matches 1 store result score RandomItemGiver RandomTimeValue run random value 1..1200

#Check for time if not set to random
execute if score RandomItemGiver RandomTime matches 1 run scoreboard players add RandomItemGiver ItemTimer 1
execute if score RandomItemGiver RandomTime matches 1 if score RandomItemGiver ItemTimer >= RandomItemGiver Time run scoreboard players set RandomItemGiver GiveItemNow 1
execute if score RandomItemGiver RandomTime matches 1 if score RandomItemGiver ItemTimer >= RandomItemGiver Time run scoreboard players set RandomItemGiver ItemTimer 0

#Generate random number
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver GiveItems matches 2 store result score RandomItemGiver MainNumber run random value 1..1000

#Regenerate the random number if it hits a disabled loot table (The regenerated number is specified in a way that it never hits another disabled item)
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver GiveItems matches 2 if score RandomItemGiver MainNumber matches 1 if score RandomItemGiver EnchantedBooks matches 1 store result score RandomItemGiver MainNumber run random value 12..1000
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver GiveItems matches 2 if score RandomItemGiver MainNumber matches 2 if score RandomItemGiver Potions matches 1 store result score RandomItemGiver MainNumber run random value 12..1000
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver GiveItems matches 2 if score RandomItemGiver MainNumber matches 3 if score RandomItemGiver LingeringPotions matches 1 store result score RandomItemGiver MainNumber run random value 12..1000
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver GiveItems matches 2 if score RandomItemGiver MainNumber matches 4 if score RandomItemGiver SplashPotions matches 1 store result score RandomItemGiver MainNumber run random value 12..1000
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver GiveItems matches 2 if score RandomItemGiver MainNumber matches 5 if score RandomItemGiver TippedArrows matches 1 store result score RandomItemGiver MainNumber run random value 12..1000
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver GiveItems matches 2 if score RandomItemGiver MainNumber matches 6 if score RandomItemGiver SuspiciousStews matches 1 store result score RandomItemGiver MainNumber run random value 12..1000
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver GiveItems matches 2 if score RandomItemGiver MainNumber matches 7 if score RandomItemGiver GoatHorns matches 1 store result score RandomItemGiver MainNumber run random value 12..1000
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver GiveItems matches 2 if score RandomItemGiver MainNumber matches 8 if score RandomItemGiver Paintings matches 1 store result score RandomItemGiver MainNumber run random value 12..1000
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver GiveItems matches 2 if score RandomItemGiver MainNumber matches 9 if score RandomItemGiver CommandBlocks matches 1 store result score RandomItemGiver MainNumber run random value 12..1000
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver GiveItems matches 2 if score RandomItemGiver MainNumber matches 10 if score RandomItemGiver SpawnEggs matches 1 store result score RandomItemGiver MainNumber run random value 12..1000
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver GiveItems matches 2 if score RandomItemGiver MainNumber matches 11 if score RandomItemGiver OtherItems matches 1 store result score RandomItemGiver MainNumber run random value 12..1000

#Give 1 random item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 1 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute as @a if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 1 if score RandomItemGiver GiveItems matches 2 run execute if score @s CanGetItems matches 2 run scoreboard players add @a RandomItemsReceived 1

#Give 2 different items
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 2 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 2 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute as @a if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 2 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run execute if score @s CanGetItems matches 2 run scoreboard players add @a RandomItemsReceived 2 

#Give 2 same items
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 2 if score RandomItemGiver ItemGiveType matches 1 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/02sameitems
execute as @a if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 2 if score RandomItemGiver ItemGiveType matches 1 if score RandomItemGiver GiveItems matches 2 run execute if score @s CanGetItems matches 2 run scoreboard players add @a RandomItemsReceived 2

#Give 3 different items
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 3 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 3 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 3 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute as @a if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 3 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run execute if score @s CanGetItems matches 2 run scoreboard players add @a RandomItemsReceived 3

#Give 3 same items
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 3 if score RandomItemGiver ItemGiveType matches 1 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/03sameitems
execute as @a if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 3 if score RandomItemGiver ItemGiveType matches 1 if score RandomItemGiver GiveItems matches 2 run execute if score @s CanGetItems matches 2 run scoreboard players add @a RandomItemsReceived 3

#Give 5 different items
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 4 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 4 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 4 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 4 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 4 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute as @a if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 4 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run execute if score @s CanGetItems matches 2 run scoreboard players add @a RandomItemsReceived 5

#Give 5 same items
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 4 if score RandomItemGiver ItemGiveType matches 1 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/05sameitems
execute as @a if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 4 if score RandomItemGiver ItemGiveType matches 1 if score RandomItemGiver GiveItems matches 2 run execute if score @s CanGetItems matches 2 run scoreboard players add @a RandomItemsReceived 5

#Give 10 different items
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 5 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 5 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 5 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 5 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 5 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 5 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 5 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 5 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 5 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 5 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute as @a if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 5 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run execute if score @s CanGetItems matches 2 run scoreboard players add @a RandomItemsReceived 10

#Give 10 same items
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 5 if score RandomItemGiver ItemGiveType matches 1 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/10sameitems
execute as @a if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 5 if score RandomItemGiver ItemGiveType matches 1 if score RandomItemGiver GiveItems matches 2 run execute if score @s CanGetItems matches 2 run scoreboard players add @a RandomItemsReceived 10

#Give 32 different items
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 6 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 6 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 6 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 6 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 6 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 6 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 6 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 6 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 6 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 6 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 6 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 6 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 6 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 6 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 6 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 6 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 6 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 6 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 6 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 6 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 6 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 6 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 6 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 6 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 6 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 6 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 6 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 6 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 6 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 6 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 6 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 6 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute as @a if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 6 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run execute if score @s CanGetItems matches 2 run scoreboard players add @a RandomItemsReceived 32

#Give 32 same items
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 6 if score RandomItemGiver ItemGiveType matches 1 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/32sameitems
execute as @a if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 6 if score RandomItemGiver ItemGiveType matches 1 if score RandomItemGiver GiveItems matches 2 run execute if score @s CanGetItems matches 2 run scoreboard players add @a RandomItemsReceived 32

#Give 64 different items
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/01item
execute as @a if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run execute if score @s CanGetItems matches 2 run scoreboard players add @a RandomItemsReceived 64

#Give 64 same items
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 1 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/64sameitems
execute as @a if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 7 if score RandomItemGiver ItemGiveType matches 1 if score RandomItemGiver GiveItems matches 2 run execute if score @s CanGetItems matches 2 run scoreboard players add @a RandomItemsReceived 64

#Give random amount of different items between 1 to 64
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 8 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/randomdifferentitems
execute as @a if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 8 if score RandomItemGiver ItemGiveType matches 2 if score RandomItemGiver GiveItems matches 2 run execute as @a run scoreboard players operation @s RandomItemsReceived += @s ItemsReceivedTemp

#Give random amount of same item between 1 and 64
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 8 if score RandomItemGiver ItemGiveType matches 1 if score RandomItemGiver GiveItems matches 2 store result score RandomItemGiver RandomAmountSameItemsNumber run random value 1..64
execute if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 8 if score RandomItemGiver ItemGiveType matches 1 if score RandomItemGiver GiveItems matches 2 run function randomitemgiver:give_items/randomsameitems
execute as @a if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 8 if score RandomItemGiver ItemGiveType matches 1 if score RandomItemGiver GiveItems matches 2 run execute as @a run scoreboard players operation @s RandomItemsReceived += RandomItemGiver RandomAmountSameItemsNumber

#Post that you got an item (if enabled)
execute as @a if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 1 if score RandomItemGiver GiveItems matches 2 if score RandomItemGiver ShowItemMessage matches 2 run execute if score @s CanGetItems matches 2 run tellraw @s ["",{"text":"(","color":"gray"},{"text":"\u2738","color":"aqua"},{"text":") ","color":"gray"},{"text":"You received a new item!","color":"aqua"}]
execute as @a if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver ItemGiveAmount matches 2..7 if score RandomItemGiver GiveItems matches 2 if score RandomItemGiver ShowItemMessage matches 2 run execute if score @s CanGetItems matches 2 run tellraw @s ["",{"text":"(","color":"gray"},{"text":"\u2738","color":"aqua"},{"text":") ","color":"gray"},{"text":"You received new items!","color":"aqua"}]

#Play sound that you got an item (if enabled)
execute as @a at @s if score RandomItemGiver ItemSound matches 1 if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver GiveItems matches 2 if score RandomItemGiver PlayItemSound matches 2 run execute if score @s CanGetItems matches 2 run playsound entity.item.pickup player @p
execute as @a at @s if score RandomItemGiver ItemSound matches 2 if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver GiveItems matches 2 if score RandomItemGiver PlayItemSound matches 2 run execute if score @s CanGetItems matches 2 run playsound block.bell.use player @p
execute as @a at @s if score RandomItemGiver ItemSound matches 3 if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver GiveItems matches 2 if score RandomItemGiver PlayItemSound matches 2 run execute if score @s CanGetItems matches 2 run playsound block.amethyst_block.hit player @p
execute as @a at @s if score RandomItemGiver ItemSound matches 4 if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver GiveItems matches 2 if score RandomItemGiver PlayItemSound matches 2 run execute if score @s CanGetItems matches 2 run playsound entity.arrow.hit player @p
execute as @a at @s if score RandomItemGiver ItemSound matches 5 if score RandomItemGiver GiveItemNow matches 1 if score RandomItemGiver GiveItems matches 2 if score RandomItemGiver PlayItemSound matches 2 run execute if score @s CanGetItems matches 2 run playsound entity.experience_orb.pickup player @p

#Remove temporary boolean
scoreboard players set RandomItemGiver GiveItemNow 0
scoreboard objectives remove GiveItemNow