#Disable Command Block feedback to hide 'Executed commands from function' message and schedule enabling it again
gamerule sendCommandFeedback false
schedule function randomitemgiver:reset_feedback 1t

scoreboard players enable @s menuTrigger
scoreboard players enable @s RandomItemGiver

execute if score @s menuTrigger matches 1 run function randomitemgiver:dialogs/settings_home
execute if score @s menuTrigger matches 2 run function randomitemgiver:dialogs/general_settings with storage randomitemgiver:settings general
execute if score @s menuTrigger matches 3 run function randomitemgiver:dialogs/item_settings with storage randomitemgiver:settings items
execute if score @s menuTrigger matches 4 run function randomitemgiver:dialogs/player_settings
execute if score @s menuTrigger matches 5 run function randomitemgiver:dialogs/reset_settings
execute if score @s menuTrigger matches 6 run function randomitemgiver:menus/news
execute if score @s menuTrigger matches 7 run function randomitemgiver:menus/credits
execute if score @s menuTrigger matches 8 run function randomitemgiver:menus/info
execute if score @s menuTrigger matches 9 run function randomitemgiver:menus/help
execute if score @s menuTrigger matches 10 run function randomitemgiver:menus/links
execute if score @s menuTrigger matches 11 run function randomitemgiver:menus/menu
execute if score @s menuTrigger matches 1.. run scoreboard players set @s menuTrigger 0

#Extra trigger solely for easier access to the menu
execute if score @s RandomItemGiver matches 1.. run function randomitemgiver:menus/menu
execute if score @s RandomItemGiver matches 1.. run scoreboard players set @s RandomItemGiver 0