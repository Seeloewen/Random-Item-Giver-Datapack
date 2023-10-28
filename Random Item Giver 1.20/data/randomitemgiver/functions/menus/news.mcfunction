gamerule sendCommandFeedback false
schedule function randomitemgiver:reset_feedback 1t

tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
tellraw @s {"text":"«\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550»","bold":true,"color":"#CE9178"}
tellraw @s ["",{"text":"Random Item Giver","bold":true,"color":"gold"},{"text":" -","bold":true,"color":"gray"},{"text":" News","bold":true,"color":"light_purple"}]
tellraw @s {"text":" "}
tellraw @s ["",{"text":"Version","color":"#F53377"},{"text":" 1.4.1","color":"#F53377"},{"text":" -","color":"gray"},{"text":" What's new?","color":"yellow"}]
tellraw @s ["",{"text":"(","color":"gray"},{"text":"+","color":"dark_green"},{"text":") ","color":"gray"},{"text":"Added option to disable datapack for individual players","color":"#FFFFB0"}]
tellraw @s ["",{"text":"(","color":"gray"},{"text":"+","color":"dark_green"},{"text":") ","color":"gray"},{"text":"Added 'Reset to default settings' button","color":"#FFFFB0"}]
tellraw @s ["",{"text":"(","color":"gray"},{"text":"+","color":"dark_green"},{"text":") ","color":"gray"},{"text":"Added options to toggle more loot tables like enchanted books, potions etc.","color":"#FFFFB0"}]
tellraw @s ["",{"text":"(","color":"gray"},{"text":"+","color":"dark_green"},{"text":") ","color":"gray"},{"text":"Added more custom sounds for receiving items","color":"#FFFFB0"}]
tellraw @s ["",{"text":"(","color":"gray"},{"text":"+","color":"dark_green"},{"text":") ","color":"gray"},{"text":"Added option to have a random time between getting an item","color":"#FFFFB0"}]
tellraw @s ["",{"text":"(","color":"gray"},{"text":"+","color":"dark_green"},{"text":") ","color":"gray"},{"text":"Added an Item Timer bossbar","color":"#FFFFB0"}]
tellraw @s ["",{"text":"(","color":"gray"},{"text":"\u204e","color":"dark_aqua"},{"text":") ","color":"gray"},{"text":"Implemented new random number generator","color":"#FFFFB0"}]
tellraw @s ["",{"text":"(","color":"gray"},{"text":"\u204e","color":"dark_aqua"},{"text":") ","color":"gray"},{"text":"Updated to 1.20.2 (Pack format 18)","color":"#FFFFB0"}]
tellraw @s ["",{"text":"(","color":"gray"},{"text":"\u204e","color":"dark_aqua"},{"text":") ","color":"gray"},{"text":"Fixed some typos","color":"#FFFFB0"}]
tellraw @s ["",{"text":"(","color":"gray"},{"text":"\u204e","color":"dark_aqua"},{"text":") ","color":"gray"},{"text":"Fixed some buttons pointing to wrong menus","color":"#FFFFB0"}]
tellraw @s ["",{"text":"(","color":"gray"},{"text":"-","color":"dark_red"},{"text":") ","color":"gray"},{"text":"Removed some duplicate items","color":"#FFFFB0"}]
tellraw @s {"text":" "}
tellraw @s ["",{"text":"[","color":"gray","clickEvent":{"action":"run_command","value":"/function randomitemgiver:menus/menu"},"hoverEvent":{"action":"show_text","contents":"Go back to main menu"}},{"text":"\u25c0","clickEvent":{"action":"run_command","value":"/function randomitemgiver:menus/menu"},"hoverEvent":{"action":"show_text","contents":"Go back to main menu"}},{"text":"]","color":"gray","clickEvent":{"action":"run_command","value":"/function randomitemgiver:menus/menu"},"hoverEvent":{"action":"show_text","contents":"Go back to main menu"}},{"text":" ","clickEvent":{"action":"run_command","value":"/function randomitemgiver:menus/menu"},"hoverEvent":{"action":"show_text","contents":"Go back to main menu"}},{"text":"back to menu","color":"#D86264","clickEvent":{"action":"run_command","value":"/function randomitemgiver:menus/menu"},"hoverEvent":{"action":"show_text","contents":"Go back to main menu"}}]
tellraw @s {"text":"«\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550»","bold":true,"color":"#CE9178"}

#Templates:
#tellraw @s ["",{"text":"(","color":"gray"},{"text":"+","color":"dark_green"},{"text":") ","color":"gray"},{"text":"Added X","color":"#FFFFB0"}]
#tellraw @s ["",{"text":"(","color":"gray"},{"text":"\u204e","color":"dark_aqua"},{"text":") ","color":"gray"},{"text":"Changed X","color":"#FFFFB0"}]
#tellraw @s ["",{"text":"(","color":"gray"},{"text":"-","color":"dark_red"},{"text":") ","color":"gray"},{"text":"Removed X","color":"#FFFFB0"}]