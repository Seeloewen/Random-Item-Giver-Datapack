scoreboard players add in1 RandomAmountSameItemsGen 1
scoreboard players operation #range RandomAmountSameItemsGen = in1 RandomAmountSameItemsGen
scoreboard players operation #range RandomAmountSameItemsGen -= in RandomAmountSameItemsGen

scoreboard players operation #m1 RandomAmountSameItemsGen = #range RandomAmountSameItemsGen
scoreboard players remove #m1 RandomAmountSameItemsGen 1
function randomitemgiver:randomnumbergenerators/rng_same_items_gen/next_int_lcg
scoreboard players operation out RandomAmountSameItemsGen += in RandomAmountSameItemsGen

scoreboard players reset #m1 RandomAmountSameItemsGen
scoreboard players remove in1 RandomAmountSameItemsGen 1