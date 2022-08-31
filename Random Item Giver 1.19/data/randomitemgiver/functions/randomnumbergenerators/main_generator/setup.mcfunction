scoreboard objectives add MainGen dummy

scoreboard players set in MainGen 1
scoreboard players set in1 MainGen 1200

scoreboard players set #lcg_constant MainGen 1103515245
execute unless score #lcg MainGen matches ..0 unless score #lcg MainGen matches 1.. run function randomitemgiver:randomnumbergenerators/main_generator/uuid_reset