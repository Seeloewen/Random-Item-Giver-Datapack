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

function randomitemgiver:randomnumbergenerators/main_generator/lcg

scoreboard players operation #temp MainGen = out MainGen
scoreboard players operation out MainGen %= #range MainGen
scoreboard players operation #temp MainGen -= out MainGen
scoreboard players operation #temp MainGen += #m1 MainGen
execute if score #temp MainGen matches ..-1 run function randomitemgiver:randomnumbergenerators/main_generator/next_int_lcg