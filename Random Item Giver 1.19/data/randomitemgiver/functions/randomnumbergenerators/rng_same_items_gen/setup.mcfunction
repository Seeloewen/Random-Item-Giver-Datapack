scoreboard objectives add RandomAmountSameItemsGen dummy

scoreboard players set in RandomAmountSameItemsGen 1
scoreboard players set in1 RandomAmountSameItemsGen 64

scoreboard players set #lcg_constant RandomAmountSameItemsGen 1103515245
execute unless score #lcg RandomAmountSameItemsGen matches ..0 unless score #lcg RandomAmountSameItemsGen matches 1.. run function randomitemgiver:randomnumbergenerators/rng_same_items_gen/uuid_reset