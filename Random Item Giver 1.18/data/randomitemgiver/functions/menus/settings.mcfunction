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
tellraw @s ["",{"text":"Random Item Giver","bold":true,"color":"#EFAF1A"},{"text":" - ","bold":true,"color":"gray"},{"text":"Settings","bold":true,"color":"red"},{"text":"\n\n"},{"text":"Pause/Continue the datapack:","italic":true,"color":"yellow"}]
execute if score RandomItemGiver GiveItems matches 1 run tellraw @s ["",{"text":"[Continue]","color":"green","clickEvent":{"action":"run_command","value":"/function randomitemgiver:settings/continue"},"hoverEvent":{"action":"show_text","contents":"Continue the datapack"}},{"text":" (currently paused)","italic":true,"color":"gray"}]
execute if score RandomItemGiver GiveItems matches 2 run tellraw @s ["",{"text":"[Pause]","color":"red","clickEvent":{"action":"run_command","value":"/function randomitemgiver:settings/pause"},"hoverEvent":{"action":"show_text","contents":"Pause the datapack"}},{"text":" (currently continued)","italic":true,"color":"gray"}]
tellraw @s {"text":" "}
tellraw @s ["",{"text":"Toggle features that are run when you receive an item:","italic":true,"color":"yellow"}]
execute if score RandomItemGiver ShowItemMessage matches 1 if score RandomItemGiver PlayItemSound matches 1 run tellraw @s ["",{"text":"[Enable message]","color":"green","clickEvent":{"action":"run_command","value":"/function randomitemgiver:settings/enableitemmessage"},"hoverEvent":{"action":"show_text","contents":"Enable message when receiving an item"}},{"text":" "},{"text":"[Enable sound]","color":"green","clickEvent":{"action":"run_command","value":"/function randomitemgiver:settings/enableitemsound"},"hoverEvent":{"action":"show_text","contents":"Enable sound when receiving an item"}}]
execute if score RandomItemGiver ShowItemMessage matches 1 if score RandomItemGiver PlayItemSound matches 2 run tellraw @s ["",{"text":"[Enable message]","color":"green","clickEvent":{"action":"run_command","value":"/function randomitemgiver:settings/enableitemmessage"},"hoverEvent":{"action":"show_text","contents":"Enable message when receiving an item"}},{"text":" "},{"text":"[Disable sound]","color":"red","clickEvent":{"action":"run_command","value":"/function randomitemgiver:settings/disableitemsound"},"hoverEvent":{"action":"show_text","contents":"Disable sound when receiving an item"}}]
execute if score RandomItemGiver ShowItemMessage matches 2 if score RandomItemGiver PlayItemSound matches 1 run tellraw @s ["",{"text":"[Disable message]","color":"red","clickEvent":{"action":"run_command","value":"/function randomitemgiver:settings/disableitemmessage"},"hoverEvent":{"action":"show_text","contents":"Disable message when receiving an item"}},{"text":" "},{"text":"[Enable sound]","color":"green","clickEvent":{"action":"run_command","value":"/function randomitemgiver:settings/enableitemsound"},"hoverEvent":{"action":"show_text","contents":"Enable sound when receiving an item"}}]
execute if score RandomItemGiver ShowItemMessage matches 2 if score RandomItemGiver PlayItemSound matches 2 run tellraw @s ["",{"text":"[Disable message]","color":"red","clickEvent":{"action":"run_command","value":"/function randomitemgiver:settings/disableitemmessage"},"hoverEvent":{"action":"show_text","contents":"Disable message when receiving an item"}},{"text":" "},{"text":"[Disable sound]","color":"red","clickEvent":{"action":"run_command","value":"/function randomitemgiver:settings/disableitemsound"},"hoverEvent":{"action":"show_text","contents":"Disable sound when receiving an item"}}]
tellraw @s {"text":" "}
tellraw @s {"text":"Change the time you get an item:","italic":true,"color":"yellow"}
tellraw @s ["",{"text":"[+1 Second]","color":"green","clickEvent":{"action":"run_command","value":"/function randomitemgiver:settings/plus1"},"hoverEvent":{"action":"show_text","contents":"Add 1 second to the timer"}},{"text":" ","color":"green"},{"text":"[+10 Seconds]","color":"green","clickEvent":{"action":"run_command","value":"/function randomitemgiver:settings/plus10"},"hoverEvent":{"action":"show_text","contents":"Add 10 seconds to the timer"}},{"text":" "},{"text":"[-1 Second]","color":"red","clickEvent":{"action":"run_command","value":"/function randomitemgiver:settings/minus1"},"hoverEvent":{"action":"show_text","contents":"Remove 1 second from the timer"}},{"text":" ","color":"red"},{"text":"[-10 Seconds]","color":"red","clickEvent":{"action":"run_command","value":"/function randomitemgiver:settings/minus10"},"hoverEvent":{"action":"show_text","contents":"Remove 10 seconds from the timer"}},{"text":"\n"},{"text":"[","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players get RandomItemGiver Seconds"},"hoverEvent":{"action":"show_text","contents":"Show the current time"}},{"text":">","color":"#5647EF","clickEvent":{"action":"run_command","value":"/scoreboard players get RandomItemGiver Seconds"},"hoverEvent":{"action":"show_text","contents":"Show the current time"}},{"text":"]","color":"gray","clickEvent":{"action":"run_command","value":"/scoreboard players get RandomItemGiver Seconds"},"hoverEvent":{"action":"show_text","contents":"Show the current time"}},{"text":" Show current time","color":"blue","clickEvent":{"action":"run_command","value":"/scoreboard players get RandomItemGiver Seconds"},"hoverEvent":{"action":"show_text","contents":"Show the current time"}}]
tellraw @s {"text":" "}
tellraw @s ["",{"text":"Toggle specific item groups and change amount/type:","italic":true,"color":"yellow"}]
tellraw @s {"text":"[Show settings for items]","color":"blue","clickEvent":{"action":"run_command","value":"/function randomitemgiver:menus/items"},"hoverEvent":{"action":"show_text","contents":"Show more settings for items"}}
tellraw @s {"text":" "}
tellraw @s ["",{"text":"[","color":"gray","clickEvent":{"action":"run_command","value":"/trigger menuTrigger set 11"},"hoverEvent":{"action":"show_text","contents":"Go back to main menu"}},{"text":"<","clickEvent":{"action":"run_command","value":"/trigger menuTrigger set 11"},"hoverEvent":{"action":"show_text","contents":"Go back to main menu"}},{"text":"]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger menuTrigger set 11"},"hoverEvent":{"action":"show_text","contents":"Go back to main menu"}},{"text":" ","clickEvent":{"action":"run_command","value":"/trigger menuTrigger set 11"},"hoverEvent":{"action":"show_text","contents":"Go back to main menu"}},{"text":"back to menu","color":"#D86264","clickEvent":{"action":"run_command","value":"/trigger menuTrigger set 11"},"hoverEvent":{"action":"show_text","contents":"Go back to main menu"}}]
tellraw @s {"text":"═════════════════════════","color":"green","bold":true}

#Some of the text was made using the JSON Text Generator by minecraft.tools