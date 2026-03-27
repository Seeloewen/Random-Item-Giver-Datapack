#Disable Command Block feedback to hide 'Executed commands from function' message and schedule enabling it again
gamerule send_command_feedback false
schedule function randomitemgiver:reset_feedback 1t

$data modify storage randomitemgiver:settings items.same_item set value $(si)
$data modify storage randomitemgiver:settings items.amount set value $(am)
$data modify storage randomitemgiver:settings items.random_amount set value $(ra)
$data modify storage randomitemgiver:settings items.spawn_eggs set value $(se)
$data modify storage randomitemgiver:settings items.command_blocks set value $(cb)
$data modify storage randomitemgiver:settings items.other_creatives set value $(oc)
$data modify storage randomitemgiver:settings items.enchanted_books set value $(eb)
$data modify storage randomitemgiver:settings items.potions set value $(po)
$data modify storage randomitemgiver:settings items.lingering_potions set value $(lp)
$data modify storage randomitemgiver:settings items.splash_potions set value $(sp)
$data modify storage randomitemgiver:settings items.tipped_arrows set value $(ta)
$data modify storage randomitemgiver:settings items.suspicious_stews set value $(ss)
$data modify storage randomitemgiver:settings items.goat_horns set value $(gh)
$data modify storage randomitemgiver:settings items.paintings set value $(p)
$data modify storage randomitemgiver:settings items.pottery_sherds set value $(ps)
$data modify storage randomitemgiver:settings items.smithing_templates set value $(st)

tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
tellraw @s {text:"The Item Settings were successfully saved!",color:"green"}
tellraw @s {text:"[",extra:[{text:"➤",color:"green",click_event:{action:"run_command",command:"/trigger menuTrigger set 11"}},{text:"]",color:"gray",click_event:{action:"run_command",command:"/trigger menuTrigger set 11"}},{text:" Click here to reopen the main menu",color:"green",click_event:{action:"run_command",command:"/trigger menuTrigger set 11"}}],color:"gray",click_event:{action:"run_command",command:"/trigger menuTrigger set 11"}}