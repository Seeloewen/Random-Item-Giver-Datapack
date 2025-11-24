#Setup the bossbar
bossbar add rigtimer {"text":"Next Random Item","color":"red"}
bossbar set minecraft:rigtimer players @a
bossbar set minecraft:rigtimer color red

execute if data storage randomitemgiver:settings {general:{enabled:1}} if data storage randomitemgiver:settings {general:{enable_random_timer:0}} store result bossbar minecraft:rigtimer max run data get storage randomitemgiver:settings general.timer
execute unless score rig randomTimeValue matches ..0 if data storage randomitemgiver:settings {general:{enabled:1}} if data storage randomitemgiver:settings {general:{enable_random_timer:1}} store result bossbar minecraft:rigtimer max run scoreboard players get rig randomTimeValue
execute if data storage randomitemgiver:settings {general:{enabled:1}} store result bossbar minecraft:rigtimer value run scoreboard players get rig internalTimer

#Add dummy boolean (0 = false, 1 = true)
scoreboard objectives add giveNow dummy
scoreboard players set rig giveNow 0

scoreboard players add rig internalTimer 1

#Check for time if set to random
execute if data storage randomitemgiver:settings {general:{enable_random_timer:1}} if score rig internalTimer >= rig randomTimeValue run scoreboard players set rig giveNow 1
execute if data storage randomitemgiver:settings {general:{enable_random_timer:1}} if score rig internalTimer >= rig randomTimeValue run scoreboard players set rig internalTimer 0
execute if data storage randomitemgiver:settings {general:{enable_random_timer:1}} if score rig giveNow matches 1 store result score rig randomTimeValue run random value 1..1200

#Check for time if not set to random
execute store result score rig tempConversion run data get storage randomitemgiver:settings general.timer
execute if data storage randomitemgiver:settings {general:{enable_random_timer:0}} if score rig internalTimer >= rig tempConversion run scoreboard players set rig giveNow 1
execute if data storage randomitemgiver:settings {general:{enable_random_timer:0}} if score rig internalTimer >= rig tempConversion run scoreboard players set rig internalTimer 0