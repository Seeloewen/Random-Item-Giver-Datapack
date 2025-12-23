#Disable Command Block feedback to hide 'Executed commands from function' message and schedule enabling it again
gamerule sendCommandFeedback false
schedule function randomitemgiver:reset_feedback 1t

#Store settings in data storage
$data modify storage randomitemgiver:settings general.enabled set value $(enabled)
$data modify storage randomitemgiver:settings general.timer set value $(timer)
$data modify storage randomitemgiver:settings general.enable_random_timer set value $(enable_random_timer)
$data modify storage randomitemgiver:settings general.enable_bossbar set value $(enable_bossbar)
$data modify storage randomitemgiver:settings general.show_message set value $(show_message)
$data modify storage randomitemgiver:settings general.enable_sound set value $(enable_sound)
$data modify storage randomitemgiver:settings general.sound_type set value $(sound_type)
$data modify storage randomitemgiver:settings general.show_scoreboard set value $(show_scoreboard)

#Apply settings where needed
execute store result score rig tempConversion run data get storage randomitemgiver:settings general.timer
scoreboard players set rig internalMaxTimer 20
scoreboard players operation rig internalMaxTimer *= rig tempConversion

execute if data storage randomitemgiver:settings {general:{enable_bossbar:0}} run bossbar set minecraft:rigtimer visible false 
execute if data storage randomitemgiver:settings {general:{enable_bossbar:1}} run bossbar set minecraft:rigtimer visible true 

execute if data storage randomitemgiver:settings {general:{show_scoreboard:0}} run scoreboard objectives setdisplay sidebar
execute if data storage randomitemgiver:settings {general:{show_scoreboard:1}} run scoreboard objectives setdisplay sidebar randomItemsReceived