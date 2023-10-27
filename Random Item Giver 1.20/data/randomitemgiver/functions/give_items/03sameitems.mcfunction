#Give 3 same items
execute if score RandomItemGiver MainNumber matches 1 run execute as @a run loot give @s loot randomitemgiver:03sameitems/enchanted_books
execute if score RandomItemGiver MainNumber matches 2 run execute as @a run loot give @s loot randomitemgiver:03sameitems/potions
execute if score RandomItemGiver MainNumber matches 3 run execute as @a run loot give @s loot randomitemgiver:03sameitems/lingering_potions
execute if score RandomItemGiver MainNumber matches 4 run execute as @a run loot give @s loot randomitemgiver:03sameitems/splash_potions
execute if score RandomItemGiver MainNumber matches 5 run execute as @a run loot give @s loot randomitemgiver:03sameitems/tipped_arrows
execute if score RandomItemGiver MainNumber matches 6 run execute as @a run loot give @s loot randomitemgiver:03sameitems/suspicious_stews
execute if score RandomItemGiver MainNumber matches 7 run execute as @a run loot give @s loot randomitemgiver:03sameitems/goat_horns
execute if score RandomItemGiver MainNumber matches 8 run execute as @a run loot give @s loot randomitemgiver:03sameitems/paintings
execute if score RandomItemGiver MainNumber matches 9 run execute as @a run loot give @s loot randomitemgiver:03sameitems/command_blocks
execute if score RandomItemGiver MainNumber matches 10 run execute as @a run loot give @s loot randomitemgiver:03sameitems/spawn_eggs
execute if score RandomItemGiver MainNumber matches 11 run execute as @a run loot give @s loot randomitemgiver:03sameitems/other_items
execute if score RandomItemGiver MainNumber matches 12..1000 run execute as @a run loot give @s loot randomitemgiver:03sameitems/normal_items