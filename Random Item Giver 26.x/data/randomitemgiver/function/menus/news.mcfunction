gamerule send_command_feedback false
schedule function randomitemgiver:reset_feedback 1t

tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}

tellraw @s {text: '«═════════════════════════»','bold':true,color: '#CE9178'}
tellraw @s [{text: 'Random Item Giver','bold':true,color: 'gold'},{text: ' -','bold':true,color: 'gray'},{text: ' News','bold':true,color: 'light_purple'}]
tellraw @s {text: ' '}
tellraw @s [{text: 'Version',color: '#F53377'},{text: ' 1.6.0',color: '#F53377'},{text: ' -',color: 'gray'},{text: ' What`s new?',color: 'yellow'}]
tellraw @s [{text:"(",color:"gray"},{text:"⁎",color:"dark_aqua"},{text:") ",color:"gray"},{text:"Fixed dialogs sometimes not opening for the correct player",color:"#FFFFB0"}]
tellraw @s [{text:"(",color:"gray"},{text:"⁎",color:"dark_aqua"},{text:") ",color:"gray"},{text:"Fixed disconnect on some servers when saving item settings",color:"#FFFFB0"}]
tellraw @s [{text:"(",color:"gray"},{text:"⁎",color:"dark_aqua"},{text:") ",color:"gray"},{text:"Updated to 26.1",color:"#FFFFB0"}]

tellraw @s {text: ' '}
tellraw @s [{text: '[',color: 'gray',click_event:{'action':'run_command', command: '/trigger menuTrigger set 11'},hover_event:{action: 'show_text', value: 'Go back to main menu'}},{text: '◀',click_event:{'action':'run_command', command: '/trigger menuTrigger set 11'},hover_event:{action: 'show_text', value: 'Go back to main menu'}},{text: ']',color: 'gray',click_event:{'action':'run_command', command: '/trigger menuTrigger set 11'},hover_event:{action: 'show_text', value: 'Go back to main menu'}},{text: ' ',click_event:{'action':'run_command', command: '/trigger menuTrigger set 11'},hover_event:{action: 'show_text', value: 'Go back to main menu'}},{text: 'back to menu',color: '#D86264',click_event:{'action':'run_command', command: '/trigger menuTrigger set 11'},hover_event:{action: 'show_text', value: 'Go back to main menu'}}]
tellraw @s {text: '«═════════════════════════»','bold':true,color: '#CE9178'}

#Templates:
#tellraw @s [{text: '(',color: 'gray'},{text: '+',color: 'dark_green'},{text: ') ',color: 'gray'},{text: 'Added X',color: '#FFFFB0'}]
#tellraw @s [{text: '(',color: 'gray'},{text: '⁎',color: 'dark_aqua'},{text: ') ',color: 'gray'},{text: 'Changed X',color: '#FFFFB0'}]
#tellraw @s [{text: '(',color: 'gray'},{text: '-',color: 'dark_red'},{text: ') ',color: 'gray'},{text: 'Removed X',color: '#FFFFB0'}]
