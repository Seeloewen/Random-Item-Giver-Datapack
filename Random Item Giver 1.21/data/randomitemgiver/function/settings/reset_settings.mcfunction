#Disable Command Block feedback to hide 'Executed commands from function' message and schedule enabling it again
gamerule send_command_feedback false
schedule function randomitemgiver:reset_feedback 1t

function randomitemgiver:settings/save_item_settings {same_item: false, amount: 1, random_amount: false, spawn_eggs: true, command_blocks: true, other_creatives: true, enchanted_books: true, potions: true, lingering_potions: true, splash_potions: true, tipped_arrows: true, suspicious_stews: true, goat_horns: true, paintings: true, pottery_sherds: true, smithing_templates: true}

function randomitemgiver:settings/save_general_settings {enabled: true, timer: 15, enable_random_timer: false, enable_bossbar: true, show_message: false, enable_sound: false, sound_type: 1, show_scoreboard: false, show_useless_warnings: true}

scoreboard players set @a canGetItems 1

tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
tellraw @s {text:"All Random Item Giver settings were successfully reset back to their default value.",color:"red"}
tellraw @s {text:"[",extra:[{text:"➤",color:"red",click_event:{action:"run_command",command:"/trigger menuTrigger set 11"}},{text:"]",color:"gray",click_event:{action:"run_command",command:"/trigger menuTrigger set 11"}},{text:" Click here to reopen the main menu",color:"red",click_event:{action:"run_command",command:"/trigger menuTrigger set 11"}}],color:"gray",click_event:{action:"run_command",command:"/trigger menuTrigger set 11"}}