summon area_effect_cloud ~ ~ ~ {Tags:["get_uuid_random_amount_same_items"]}
execute store result score #lcg RandomAmountSameItemsGen run data get entity @e[tag=get_uuid_random_amount_same_items,limit=1] UUIDMost 0.00000000023283064365386962890625
kill @e[tag=get_uuid_random_amount_same_items]