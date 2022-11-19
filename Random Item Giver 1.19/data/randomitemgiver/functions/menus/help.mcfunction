gamerule sendCommandFeedback false
schedule function randomitemgiver:reset_feedback 1t

tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
tellraw @s {"text":"«\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550»","bold":true,"color":"#CE9178"}
tellraw @s ["",{"text":"Random Item Giver","bold":true,"color":"gold"},{"text":" - ","bold":true,"color":"gray"},{"text":"Help","bold":true,"color":"green"}]
tellraw @s {"text":" "}
tellraw @s ["",{"text":"(","color":"gray"},{"text":"Q","color":"yellow"},{"text":")","color":"gray"},{"text":" How can I change the time it takes to receive an item?","color":"yellow"}]
tellraw @s ["",{"text":"(","color":"gray"},{"text":"A","color":"#FFFFAF"},{"text":")","color":"gray"},{"text":" You can change it in the ","color":"#FFFFAF"},{"text":"settings menu","underlined":true,"color":"#FFFFAF","clickEvent":{"action":"run_command","value":"/function randomitemgiver:menus/settings"},"hoverEvent":{"action":"show_text","contents":"Open the settings menu"}},{"text":" which you can access through the main menu.","color":"#FFFFAF"}]
tellraw @s {"text":" "}
tellraw @s ["",{"text":"(","color":"gray"},{"text":"Q","color":"yellow"},{"text":")","color":"gray"},{"text":" Can I use this datapack in a video?","color":"yellow"}]
tellraw @s ["",{"text":"(","color":"gray"},{"text":"A","color":"#FFFFAF"},{"text":")","color":"gray"},{"text":" Yes, you can, but please don't forget to give credits. A shoutout or link is appreciated.","color":"#FFFFAF"}]
tellraw @s {"text":" "}
tellraw @s ["",{"text":"(","color":"gray"},{"text":"Q","color":"yellow"},{"text":")","color":"gray"},{"text":" Does this datapack work on Multiplayer?","color":"yellow"}]
tellraw @s ["",{"text":"(","color":"gray"},{"text":"A","color":"#FFFFAF"},{"text":")","color":"gray"},{"text":" Yes, it does! You can install this on your server like any other datapack.","color":"#FFFFAF"}]
tellraw @s {"text":" "}
tellraw @s ["",{"text":"[","color":"gray","clickEvent":{"action":"run_command","value":"/function randomitemgiver:menus/menu"},"hoverEvent":{"action":"show_text","contents":"Go back to main menu"}},{"text":"◀","clickEvent":{"action":"run_command","value":"/function randomitemgiver:menus/menu"},"hoverEvent":{"action":"show_text","contents":"Go back to main menu"}},{"text":"]","color":"gray","clickEvent":{"action":"run_command","value":"/function randomitemgiver:menus/menu"},"hoverEvent":{"action":"show_text","contents":"Go back to main menu"}},{"text":" ","clickEvent":{"action":"run_command","value":"/function randomitemgiver:menus/menu"},"hoverEvent":{"action":"show_text","contents":"Go back to main menu"}},{"text":"back to menu","color":"#D86264","clickEvent":{"action":"run_command","value":"/function randomitemgiver:menus/menu"},"hoverEvent":{"action":"show_text","contents":"Go back to main menu"}}]
tellraw @s {"text":"«\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550»","bold":true,"color":"#CE9178"}