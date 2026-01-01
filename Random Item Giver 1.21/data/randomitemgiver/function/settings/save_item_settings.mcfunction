#Disable Command Block feedback to hide 'Executed commands from function' message and schedule enabling it again
gamerule send_command_feedback false
schedule function randomitemgiver:reset_feedback 1t

$data modify storage randomitemgiver:settings items.same_item set value $(same_item)
$data modify storage randomitemgiver:settings items.amount set value $(amount)
$data modify storage randomitemgiver:settings items.random_amount set value $(random_amount)
$data modify storage randomitemgiver:settings items.spawn_eggs set value $(spawn_eggs)
$data modify storage randomitemgiver:settings items.command_blocks set value $(command_blocks)
$data modify storage randomitemgiver:settings items.other_creatives set value $(other_creatives)
$data modify storage randomitemgiver:settings items.enchanted_books set value $(enchanted_books)
$data modify storage randomitemgiver:settings items.potions set value $(potions)
$data modify storage randomitemgiver:settings items.lingering_potions set value $(lingering_potions)
$data modify storage randomitemgiver:settings items.splash_potions set value $(splash_potions)
$data modify storage randomitemgiver:settings items.tipped_arrows set value $(tipped_arrows)
$data modify storage randomitemgiver:settings items.suspicious_stews set value $(suspicious_stews)
$data modify storage randomitemgiver:settings items.goat_horns set value $(goat_horns)
$data modify storage randomitemgiver:settings items.paintings set value $(paintings)
$data modify storage randomitemgiver:settings items.pottery_sherds set value $(pottery_sherds)
$data modify storage randomitemgiver:settings items.smithing_templates set value $(smithing_templates)

tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
tellraw @s {text:"The Item Settings were successfully saved!",color:"green"}
tellraw @s {text:"[",extra:[{text:"➤",color:"green",click_event:{action:"run_command",command:"/trigger menuTrigger set 11"}},{text:"]",color:"gray",click_event:{action:"run_command",command:"/trigger menuTrigger set 11"}},{text:" Click here to reopen the main menu",color:"green",click_event:{action:"run_command",command:"/trigger menuTrigger set 11"}}],color:"gray",click_event:{action:"run_command",command:"/trigger menuTrigger set 11"}}