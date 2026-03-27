#Disable Command Block feedback to hide 'Executed commands from function' message and schedule enabling it again
gamerule send_command_feedback false
schedule function randomitemgiver:reset_feedback 1t

execute if data storage randomitemgiver:settings {general:{show_useless_warnings:1}} run tellraw @s {text:"You received a structure block, but it's unfortunately useless if you're not in creative mode.",color:"gold"}
execute if data storage randomitemgiver:settings {general:{show_useless_warnings:1}} run tellraw @s {text:"Click here to open the item settings to disable getting them! ",extra:[{text:"(Or click here to open the settings for disabling this message)",color:"gray",click_event:{action:"run_command",command:"/trigger menuTrigger set 2"}}],color:"gold",click_event:{action:"run_command",command:"/trigger menuTrigger set 3"}}

advancement revoke @a only randomitemgiver:structure_block_received