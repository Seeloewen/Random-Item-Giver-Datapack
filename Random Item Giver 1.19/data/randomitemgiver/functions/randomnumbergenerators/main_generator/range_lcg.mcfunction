scoreboard players add in1 MainGen 1
scoreboard players operation #range MainGen = in1 MainGen
scoreboard players operation #range MainGen -= in MainGen

scoreboard players operation #m1 MainGen = #range MainGen
scoreboard players remove #m1 MainGen 1
function randomitemgiver:randomnumbergenerators/main_generator/next_int_lcg
scoreboard players operation out MainGen += in MainGen

scoreboard players reset #m1 MainGen
scoreboard players remove in1 MainGen 1