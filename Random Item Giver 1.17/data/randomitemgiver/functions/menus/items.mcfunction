tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":" "}
tellraw @s {"text":"═════════════════════════","color":"green","bold":true}
tellraw @s ["",{"text":"Random Item Giver","bold":true,"color":"#EFAF1A"},{"text":" -","bold":true,"color":"gray"},{"text":" Items","bold":true,"color":"dark_purple"},{"text":"\n\n"},{"text":"Toggle the items you can get:","color":"yellow"}]
execute if score SpawnEggs Enabled matches 2 run tellraw @s {"text":"[Disable Spawn Eggs]","color":"red","clickEvent":{"action":"run_command","value":"/function randomitemgiver:settings/disablespawneggs"},"hoverEvent":{"action":"show_text","contents":"Disable Spawn Eggs"}}
execute if score SpawnEggs Enabled matches 1 run tellraw @s {"text":"[Enable Spawn Eggs]","color":"green","clickEvent":{"action":"run_command","value":"/function randomitemgiver:settings/enablespawneggs"},"hoverEvent":{"action":"show_text","contents":"Enable Spawn Eggs"}}
execute if score CommandBlocks Enabled matches 2 run tellraw @s {"text":"[Disable Command Blocks]","color":"red","clickEvent":{"action":"run_command","value":"/function randomitemgiver:settings/disablecommandblocks"},"hoverEvent":{"action":"show_text","contents":"Disable Command Blocks"}}
execute if score CommandBlocks Enabled matches 1 run tellraw @s {"text":"[Enable Command Blocks]","color":"green","clickEvent":{"action":"run_command","value":"/function randomitemgiver:settings/enablecommandblocks"},"hoverEvent":{"action":"show_text","contents":"Enable Command Blocks"}}
execute if score OtherItems Enabled matches 2 run tellraw @s {"text":"[Disable other creative-only items]","color":"red","clickEvent":{"action":"run_command","value":"/function randomitemgiver:settings/disableotheritems"},"hoverEvent":{"action":"show_text","contents":"Disable other creative-only items"}}
execute if score OtherItems Enabled matches 1 run tellraw @s {"text":"[Enable other creative-only items]","color":"green","clickEvent":{"action":"run_command","value":"/function randomitemgiver:settings/enableotheritems"},"hoverEvent":{"action":"show_text","contents":"Enable other creative-only items"}}
tellraw @s {"text":" "}
tellraw @s ["",{"text":"[","color":"gray","clickEvent":{"action":"run_command","value":"/function randomitemgiver:menus/menu"},"hoverEvent":{"action":"show_text","contents":"Go back to main menu"}},{"text":"<","clickEvent":{"action":"run_command","value":"/function randomitemgiver:menus/menu"},"hoverEvent":{"action":"show_text","contents":"Go back to main menu"}},{"text":"]","color":"gray","clickEvent":{"action":"run_command","value":"/function randomitemgiver:menus/menu"},"hoverEvent":{"action":"show_text","contents":"Go back to main menu"}},{"text":" ","clickEvent":{"action":"run_command","value":"/function randomitemgiver:menus/menu"},"hoverEvent":{"action":"show_text","contents":"Go back to main menu"}},{"text":"back to menu","color":"#D86264","clickEvent":{"action":"run_command","value":"/function randomitemgiver:menus/menu"},"hoverEvent":{"action":"show_text","contents":"Go back to main menu"}}]
tellraw @s {"text":"═════════════════════════","color":"green","bold":true}