function randomitemgiver:triggers
execute if data storage randomitemgiver:settings {general:{enabled:1}} run function randomitemgiver:timer
execute if data storage randomitemgiver:settings {general:{enabled:1}} if score rig giveNow matches 1 run function randomitemgiver:give_items/main