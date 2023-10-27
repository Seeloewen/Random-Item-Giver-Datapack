#Give 10 same items
execute if score RandomItemGiver MainNumber matches 1 run execute as @a run loot give @s loot randomitemgiver:10sameitems/enchanted_books
execute if score RandomItemGiver MainNumber matches 2 run execute as @a run loot give @s loot randomitemgiver:10sameitems/potions
execute if score RandomItemGiver MainNumber matches 3 run execute as @a run loot give @s loot randomitemgiver:10sameitems/lingering_potions
execute if score RandomItemGiver MainNumber matches 4 run execute as @a run loot give @s loot randomitemgiver:10sameitems/splash_potions
execute if score RandomItemGiver MainNumber matches 5 run execute as @a run loot give @s loot randomitemgiver:10sameitems/tipped_arrows
execute if score RandomItemGiver MainNumber matches 6 run execute as @a run loot give @s loot randomitemgiver:10sameitems/suspicious_stews
execute if score RandomItemGiver MainNumber matches 7 run execute as @a run loot give @s loot randomitemgiver:10sameitems/goat_horns
execute if score RandomItemGiver MainNumber matches 8 run execute as @a run loot give @s loot randomitemgiver:10sameitems/paintings
execute if score RandomItemGiver MainNumber matches 9 run execute as @a run loot give @s loot randomitemgiver:10sameitems/command_blocks
execute if score RandomItemGiver MainNumber matches 10 run execute as @a run loot give @s loot randomitemgiver:10sameitems/spawn_eggs
execute if score RandomItemGiver MainNumber matches 11 run execute as @a run loot give @s loot randomitemgiver:10sameitems/other_items
execute if score RandomItemGiver MainNumber matches 12..1000 run execute as @a run loot give @s loot randomitemgiver:10sameitems/normal_items