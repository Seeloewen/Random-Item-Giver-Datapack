gamerule sendCommandFeedback false
schedule function randomitemgiver:reset_feedback 1t

tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
tellraw @s {"text":"«\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550»","bold":true,"color":"#CE9178"}
tellraw @s ["",{"text":"Random Item Giver","bold":true,"color":"gold"},{"text":" -","bold":true,"color":"gray"},{"text":" News","bold":true,"color":"light_purple"}]
tellraw @s {"text":" "}
tellraw @s ["",{"text":"Version","color":"#F53377"},{"text":" 1.0.22","color":"#F53377"},{"text":" -","color":"gray"},{"text":" What's new?","color":"yellow"}]
tellraw @s ["",{"text":"(","color":"gray"},{"text":"\u204e","color":"dark_aqua"},{"text":") ","color":"gray"},{"text":"Fixed typos and grammatical mistakes","color":"#FFFFB0"}]
tellraw @s {"text":" "}
tellraw @s ["",{"text":"[","color":"gray","clickEvent":{"action":"run_command","value":"/trigger menuTrigger set 11"},"hoverEvent":{"action":"show_text","contents":"Go back to main menu"}},{"text":"\u25c0","clickEvent":{"action":"run_command","value":"/trigger menuTrigger set 11"},"hoverEvent":{"action":"show_text","contents":"Go back to main menu"}},{"text":"]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger menuTrigger set 11"},"hoverEvent":{"action":"show_text","contents":"Go back to main menu"}},{"text":" ","clickEvent":{"action":"run_command","value":"/trigger menuTrigger set 11"},"hoverEvent":{"action":"show_text","contents":"Go back to main menu"}},{"text":"back to menu","color":"#D86264","clickEvent":{"action":"run_command","value":"/trigger menuTrigger set 11"},"hoverEvent":{"action":"show_text","contents":"Go back to main menu"}}]
tellraw @s {"text":"«\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550\u2550»","bold":true,"color":"#CE9178"}

#Templates:
#tellraw @s ["",{"text":"(","color":"gray"},{"text":"+","color":"dark_green"},{"text":") ","color":"gray"},{"text":"Added X","color":"#FFFFB0"}]
#tellraw @s ["",{"text":"(","color":"gray"},{"text":"\u204e","color":"dark_aqua"},{"text":") ","color":"gray"},{"text":"Changed X","color":"#FFFFB0"}]
#tellraw @s ["",{"text":"(","color":"gray"},{"text":"-","color":"dark_red"},{"text":") ","color":"gray"},{"text":"Removed X","color":"#FFFFB0"}]