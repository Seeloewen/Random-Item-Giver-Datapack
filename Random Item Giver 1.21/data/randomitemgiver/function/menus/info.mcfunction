gamerule sendCommandFeedback false
schedule function randomitemgiver:reset_feedback 1t

tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}

tellraw @s {text: '«═════════════════════════»','bold':true,color: '#CE9178'}
tellraw @s [{text: 'Random Item Giver','bold':true,color: 'gold'},{text: ' - ','bold':true,color: 'gray'},{text: 'About','bold':true,color: 'yellow'}]
tellraw @s {text: ' '}
tellraw @s {text: 'Version 1.5.6-Beta1',color: '#4CEFEF'}
tellraw @s {text: 'For Minecraft 1.21.10',color: '#4CEFEF'}
tellraw @s {text: ' '}
tellraw @s {text: 'Made by Louis9',color: 'dark_aqua'}
tellraw @s {text: 'Original version by Phoenix SC',color: 'dark_aqua'}
tellraw @s {text: ' '}
tellraw @s [{text: '[',color: 'gray',click_event:{'action':'run_command', command: '/trigger menuTrigger set 11'},hover_event:{action: 'show_text', value: 'Go back to main menu'}},{text: '◀',click_event:{'action':'run_command', command: '/trigger menuTrigger set 11'},hover_event:{action: 'show_text', value: 'Go back to main menu'}},{text: ']',color: 'gray',click_event:{'action':'run_command', command: '/trigger menuTrigger set 11'},hover_event:{action: 'show_text', value: 'Go back to main menu'}},{text: ' ',click_event:{'action':'run_command', command: '/trigger menuTrigger set 11'},hover_event:{action: 'show_text', value: 'Go back to main menu'}},{text: 'back to menu',color: '#D86264',click_event:{'action':'run_command', command: '/trigger menuTrigger set 11'},hover_event:{action: 'show_text', value: 'Go back to main menu'}}]
tellraw @s {text: '«═════════════════════════»','bold':true,color: '#CE9178'}
