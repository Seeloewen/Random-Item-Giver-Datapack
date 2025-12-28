gamerule sendCommandFeedback false
schedule function randomitemgiver:reset_feedback 1t

tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}

tellraw @s {text: '«═════════════════════════»','bold':true,color: '#CE9178'}
tellraw @s [{text: 'Random Item Giver','bold':true,color: 'gold'},{text: ' -','bold':true,color: 'gray'},{text: ' Credits','bold':true,color: 'dark_red'}]
tellraw @s {text: ' '}
tellraw @s [{text: 'Louis9/Seeloewen',color: 'green'},{text: ' - ',color: 'gray'},{text: 'Creator of this version',color: 'green'}]
tellraw @s [{text: 'Phoenix SC ',color: 'red'},{text: '- ',color: 'gray'},{text: 'Original Creator',color: 'red'}]
tellraw @s {text: ' '}
tellraw @s {text: 'Special thanks to the many awesome people who contributed to the datapack in some way! You can find them in the CREDITS.txt file located in the root of this datapack`s folder',color: 'yellow'}
tellraw @s {text: ' '}
tellraw @s [{text: '[',color: 'gray',click_event:{'action':'run_command', command: '/trigger menuTrigger set 11'},hover_event:{action: 'show_text', value: 'Go back to main menu'}},{text: '◀',click_event:{'action':'run_command', command: '/trigger menuTrigger set 11'},hover_event:{action: 'show_text', value: 'Go back to main menu'}},{text: ']',color: 'gray',click_event:{'action':'run_command', command: '/trigger menuTrigger set 11'},hover_event:{action: 'show_text', value: 'Go back to main menu'}},{text: ' ',click_event:{'action':'run_command', command: '/trigger menuTrigger set 11'},hover_event:{action: 'show_text', value: 'Go back to main menu'}},{text: 'back to menu',color: '#D86264',click_event:{'action':'run_command', command: '/trigger menuTrigger set 11'},hover_event:{action: 'show_text', value: 'Go back to main menu'}}]
tellraw @s {text: '«═════════════════════════»','bold':true,color: '#CE9178'}
