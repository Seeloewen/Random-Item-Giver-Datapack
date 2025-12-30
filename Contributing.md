# Contributing

If you want to contribute to the datapack, you can always open a pull request.
The best way to contribute to the datapack is to add new items, only vanilla ones though as modded items will not work on other instances.

Adding new items to the datapack is pretty simple. Firstly, choose to which version of the datapack you want to add items.
The next thing you need to do is to add items to the loot tables.
* If you want to add normal items, edit normal_items.json
* If you want to add spawn eggs, edit spawn_eggs.json
* If you want to add command blocks, edit command_blocks.json
* If you want to add other creative only items, edit other_items.json
* If you want to add enchanted books, edit enchanted_books.json
* If you want to add lingering potions, edit lingering_potion.json
* If you want to add potions, edit potion.json
* If you want to add splash potions, edit splash_potion.json
* If you want to add suspicious stews, edit suspicious_stew.json
* If you want to add tipped arrows, edit tipped_arrow.json
* If you want to add paintings, edit paintings.json
* If you want to add goat horns, edit goat_horns.json
* If you want to add pottery sherds, edit pottery_sherds.json
* If you want to add smithing templates, edit smithing_templates.json

## Old Versions

In older versions, the loot tables are sometimes found multiple times across folders for different amounts of items. Make sure to edit the specific loot tables in all those folders if you want your items to be compatible with the item settings!

Starting with version 1.4.2 for 1.20.2, the structure on how item groups are represented by loot tables has changed. Before, it was more complicated and not as straight forward as today. Here is the overview for the old loot tables. Any loot tables, that are not listed here behave the same as in new versions. For even older versions, you should also edit rng_main.json to include the correct number of items.

All old loot tables:
* main.json contains all items
* main_without_creative-only.json contains all normal items (All items that are not creative-only)
* special_vvx.json contains all normal items, spawn eggs, command blocks, but not other creative-only items
* special_vxv.json contains all normal items, spawn eggs, other creative-only items but not command blocks
* special_vxx.json contains all normal items, spawn eggs but not command blocks and other creative-only items
* special_xvv.json contains all normal items, command blocks, other creative-only items but not spawn eggs
* special_xvx.json contains all normal items, command blocks, but not spawn eggs and other creative-only items
* special_xxv.json contains all normal items, other creative-only items, but not spawn eggs and command blocks
