# LCG Seed implementation
#
# x_(n+1) = x_(n)*a + c
#
# a = 1103515245, c = 12345

scoreboard players operation #lcg RandomAmountSameItemsGen *= #lcg_constant RandomAmountSameItemsGen
scoreboard players add #lcg RandomAmountSameItemsGen 12345
scoreboard players operation out RandomAmountSameItemsGen = #lcg RandomAmountSameItemsGen