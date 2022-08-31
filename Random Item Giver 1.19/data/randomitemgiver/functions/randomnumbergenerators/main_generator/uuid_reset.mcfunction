summon area_effect_cloud ~ ~ ~ {Tags:["get_uuid_main"]}
execute store result score #lcg MainGen run data get entity @e[tag=get_uuid_main,limit=1] UUIDMost 0.00000000023283064365386962890625
kill @e[tag=get_uuid_main]