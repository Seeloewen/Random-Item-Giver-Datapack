###
#    public int nextInt(int bound) {
#        if (bound <= 0)
#            throw new IllegalArgumentException(BadBound);
#
#        int r = next(31);
#        int m = bound - 1;
#        if ((bound & m) == 0)  // i.e., bound is a power of 2
#            r = (int)((bound * (long)r) >> 31);
#        else {
#            for (int u = r; u - (r = u % bound) + m < 0; u = next(31));
#        }
#        return r;
#    }

function randomitemgiver:randomnumbergenerators/rng_same_items_gen/lcg

scoreboard players operation #temp RandomAmountSameItemsGen = out RandomAmountSameItemsGen
scoreboard players operation out RandomAmountSameItemsGen %= #range RandomAmountSameItemsGen
scoreboard players operation #temp RandomAmountSameItemsGen -= out RandomAmountSameItemsGen
scoreboard players operation #temp RandomAmountSameItemsGen += #m1 RandomAmountSameItemsGen
execute if score #temp RandomAmountSameItemsGen matches ..-1 run function randomitemgiver:randomnumbergenerators/rng_same_items_gen/next_int_lcg