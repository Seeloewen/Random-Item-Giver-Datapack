#Give random amount of the same item
execute if score RandomItemGiver MainNumber matches 1 run execute as @a run loot give @s loot randomitemgiver:randomamountsameitem/enchanted_books
execute if score RandomItemGiver MainNumber matches 2 run execute as @a run loot give @s loot randomitemgiver:randomamountsameitem/potions
execute if score RandomItemGiver MainNumber matches 3 run execute as @a run loot give @s loot randomitemgiver:randomamountsameitem/lingering_potions
execute if score RandomItemGiver MainNumber matches 4 run execute as @a run loot give @s loot randomitemgiver:randomamountsameitem/splash_potions
execute if score RandomItemGiver MainNumber matches 5 run execute as @a run loot give @s loot randomitemgiver:randomamountsameitem/tipped_arrows
execute if score RandomItemGiver MainNumber matches 6 run execute as @a run loot give @s loot randomitemgiver:randomamountsameitem/suspicious_stews
execute if score RandomItemGiver MainNumber matches 7 run execute as @a run loot give @s loot randomitemgiver:randomamountsameitem/goat_horns
execute if score RandomItemGiver MainNumber matches 8 run execute as @a run loot give @s loot randomitemgiver:randomamountsameitem/paintings
execute if score RandomItemGiver MainNumber matches 9 run execute as @a run loot give @s loot randomitemgiver:randomamountsameitem/command_blocks
execute if score RandomItemGiver MainNumber matches 10 run execute as @a run loot give @s loot randomitemgiver:randomamountsameitem/spawn_eggs
execute if score RandomItemGiver MainNumber matches 11 run execute as @a run loot give @s loot randomitemgiver:randomamountsameitem/other_items
execute if score RandomItemGiver MainNumber matches 12..1300 run execute as @a run loot give @s loot randomitemgiver:randomamountsameitem/normal_items