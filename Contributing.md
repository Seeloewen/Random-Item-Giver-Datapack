# Contributing

If you want to contribute to the datapack, you can always open a pull request.
The best way to contribute to the datapack is to add new items, preferably vanilla.

Adding new items to the datapack is pretty simple. Firstly, choose to which version of the datapack you want to add items.
The next thing you need to do is to add items to the loot tables. 
* If you want to add enchanted books, edit enchanted_books.json
* If you want to add lingering potions, edit lingering_potion.json
* If you want to add potions, edit potion.json
* If you want to add splash potions, edit splash_potion.json
* If you want to add suspicious stews, edit suspicious_stew.json
* If you want to add tipped arrows, edit tipped_arrow.json

If you want to add other items or blocks, edit the loot tables main.json, main_without_creative-only.json, special_vvx.json, special_vxv.json, special_vxx.json, special_xvv.json, special_xvx.json, special_xxv.json
* main.json contains all items
* main_without_creative-only.json contains all items that are not creative-only
* special_vvx.json contains all items, spawn eggs, command blocks, but not other creative-only items
* special_vxv.json contains all items, spawn eggs, other creative-only items but not command blocks
* special_vxx.json contains all items, spawn eggs but not command blocks and other creative-only items
* special_xvv.json contains all items, command blocks, other creative-only items but not spawn eggs
* special_xvx.json contains all items, command blocks, but not spawn eggs and other creative-only items
* special_xxv.json contains all items, other creative-only items, but not spawn eggs and command blocks

Make sure to edit all loot tables when adding a new item.
It is also recommended to edit the "max" value in rng_main.json loot table so if you add 3 items, you make the number 3 bigger.

Please make sure to add the items in all loot tables in all folders (1item, 2items and so on.) In the loot tables where you get multiple items, make sure to also add the correct amount value.
