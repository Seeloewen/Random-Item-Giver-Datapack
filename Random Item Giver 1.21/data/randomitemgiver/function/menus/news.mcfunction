gamerule sendCommandFeedback false
schedule function randomitemgiver:reset_feedback 1t

tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
tellraw @s {"text":"«\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550»","bold":true,"color":"#CE9178"}
tellraw @s ["",{"text":"Random Item Giver","bold":true,"color":"gold"},{"text":" -","bold":true,"color":"gray"},{"text":" News","bold":true,"color":"light_purple"}]
tellraw @s {"text":" "}
tellraw @s ["",{"text":"Version","color":"#F53377"},{"text":" 1.5.0","color":"#F53377"},{"text":" -","color":"gray"},{"text":" What's new?","color":"yellow"}]
tellraw @s ["",{"text":"(","color":"gray"},{"text":"+","color":"dark_green"},{"text":") ","color":"gray"},{"text":"Added all new items from 1.21","color":"#FFFFB0"}]
tellraw @s ["",{"text":"(","color":"gray"},{"text":"\u204e","color":"dark_aqua"},{"text":") ","color":"gray"},{"text":"Updated to 1.21 (Pack Format 48)","color":"#FFFFB0"}]
tellraw @s ["",{"text":"(","color":"gray"},{"text":"\u204e","color":"dark_aqua"},{"text":") ","color":"gray"},{"text":"Increased chances for special items like potions, enchanted books, etc.","color":"#FFFFB0"}]
tellraw @s ["",{"text":"(","color":"gray"},{"text":"\u204e","color":"dark_aqua"},{"text":") ","color":"gray"},{"text":"Fixed 'Random Amount of Same Item' setting not working","color":"#FFFFB0"}]
tellraw @s ["",{"text":"(","color":"gray"},{"text":"-","color":"dark_red"},{"text":") ","color":"gray"},{"text":"Removed filled map item as it was corrupted","color":"#FFFFB0"}]
tellraw @s {"text":" "}
tellraw @s ["",{"text":"[","color":"gray","clickEvent":{"action":"run_command","value":"/function randomitemgiver:menus/menu"},"hoverEvent":{"action":"show_text","contents":"Go back to main menu"}},{"text":"\u25c0","clickEvent":{"action":"run_command","value":"/function randomitemgiver:menus/menu"},"hoverEvent":{"action":"show_text","contents":"Go back to main menu"}},{"text":"]","color":"gray","clickEvent":{"action":"run_command","value":"/function randomitemgiver:menus/menu"},"hoverEvent":{"action":"show_text","contents":"Go back to main menu"}},{"text":" ","clickEvent":{"action":"run_command","value":"/function randomitemgiver:menus/menu"},"hoverEvent":{"action":"show_text","contents":"Go back to main menu"}},{"text":"back to menu","color":"#D86264","clickEvent":{"action":"run_command","value":"/function randomitemgiver:menus/menu"},"hoverEvent":{"action":"show_text","contents":"Go back to main menu"}}]
tellraw @s {"text":"«\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550»","bold":true,"color":"#CE9178"}

#Templates:
#tellraw @s ["",{"text":"(","color":"gray"},{"text":"+","color":"dark_green"},{"text":") ","color":"gray"},{"text":"Added X","color":"#FFFFB0"}]
#tellraw @s ["",{"text":"(","color":"gray"},{"text":"\u204e","color":"dark_aqua"},{"text":") ","color":"gray"},{"text":"Changed X","color":"#FFFFB0"}]
#tellraw @s ["",{"text":"(","color":"gray"},{"text":"-","color":"dark_red"},{"text":") ","color":"gray"},{"text":"Removed X","color":"#FFFFB0"}]