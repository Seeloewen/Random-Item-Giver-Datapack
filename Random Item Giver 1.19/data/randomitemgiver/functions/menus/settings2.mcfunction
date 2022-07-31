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
tellraw @s ["",{"text":"Random Item Giver","bold":true,"color":"#EFAF1A"},{"text":" - ","bold":true,"color":"gray"},{"text":"Settings (Page 2)","bold":true,"color":"red"}]
tellraw @s {"text":" "}
tellraw @s {"text":"Show amount of received items in scoreboard:","italic":true,"color":"yellow"}
execute if score RandomItemGiver ShowItemAmountScoreboard matches 1 run tellraw @s {"text":"[Enable]","color":"green","clickEvent":{"action":"run_command","value":"/function randomitemgiver:settings/enableitemamountscoreboard"},"hoverEvent":{"action":"show_text","contents":"Show amount of received items in scoreboard"}}
execute if score RandomItemGiver ShowItemAmountScoreboard matches 2 run tellraw @s {"text":"[Disable]","color":"red","clickEvent":{"action":"run_command","value":"/function randomitemgiver:settings/disableitemamountscoreboard"},"hoverEvent":{"action":"show_text","contents":"Hide amount of received items in scoreboard"}}
tellraw @s {"text":" "}
tellraw @s ["",{"text":"[","color":"gray","clickEvent":{"action":"run_command","value":"/function randomitemgiver:menus/menu"},"hoverEvent":{"action":"show_text","contents":"Go back to main menu"}},{"text":"<","clickEvent":{"action":"run_command","value":"/function randomitemgiver:menus/menu"},"hoverEvent":{"action":"show_text","contents":"Go back to main menu"}},{"text":"]","color":"gray","clickEvent":{"action":"run_command","value":"/function randomitemgiver:menus/menu"},"hoverEvent":{"action":"show_text","contents":"Go back to main menu"}},{"text":" ","clickEvent":{"action":"run_command","value":"/function randomitemgiver:menus/menu"},"hoverEvent":{"action":"show_text","contents":"Go back to main menu"}},{"text":"back to menu","color":"#D86264","clickEvent":{"action":"run_command","value":"/function randomitemgiver:menus/menu"},"hoverEvent":{"action":"show_text","contents":"Go back to main menu"}},{"text":"                             [","color":"gray","clickEvent":{"action":"run_command","value":"/function randomitemgiver:menus/settings"},"hoverEvent":{"action":"show_text","contents":"Show settings page 1"}},{"text":"<","clickEvent":{"action":"run_command","value":"/function randomitemgiver:menus/settings"},"hoverEvent":{"action":"show_text","contents":"Show settings page 1"}},{"text":"]","color":"gray","clickEvent":{"action":"run_command","value":"/function randomitemgiver:menus/settings"},"hoverEvent":{"action":"show_text","contents":"Show settings page 1"}},{"text":" ","clickEvent":{"action":"run_command","value":"/function randomitemgiver:menus/settings"},"hoverEvent":{"action":"show_text","contents":"Show settings page 1"}},{"text":"Page 1","color":"#69B4F7","clickEvent":{"action":"run_command","value":"/function randomitemgiver:menus/settings"},"hoverEvent":{"action":"show_text","contents":"Show settings page 1"}}]
tellraw @s {"text":"═════════════════════════","color":"green","bold":true}