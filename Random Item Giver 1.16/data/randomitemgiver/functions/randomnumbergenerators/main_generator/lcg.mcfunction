# LCG Seed implementation
#
# x_(n+1) = x_(n)*a + c
#
# a = 1103515245, c = 12345

scoreboard players operation #lcg MainGen *= #lcg_constant MainGen
scoreboard players add #lcg MainGen 12345
scoreboard players operation out MainGen = #lcg MainGen