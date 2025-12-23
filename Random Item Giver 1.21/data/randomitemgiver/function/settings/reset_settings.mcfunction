#Disable Command Block feedback to hide 'Executed commands from function' message and schedule enabling it again
gamerule sendCommandFeedback false
schedule function randomitemgiver:reset_feedback 1t

function randomitemgiver:settings/save_item_settings {same_item: false, amount: 1, random_amount: false, spawn_eggs: true, command_blocks: true, other_creatives: true, enchanted_books: true, potions: true, lingering_potions: true, splash_potions: true, tipped_arrows: true, suspicious_stews: true, goat_horns: true, paintings: true, pottery_sherds: true, smithing_templates: true}

function randomitemgiver:settings/save_general_settings {enabled: true, timer: 300, enable_random_timer: false, enable_bossbar: true, show_message: false, enable_sound: false, sound_type: 1, show_scoreboard: false}

scoreboard players set @a canGetItems 1

tellraw @s {text:"All Random Item Giver settings were successfully reset back to their default value.",color:"red"}