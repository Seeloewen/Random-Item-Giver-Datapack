gamerule sendCommandFeedback false
schedule function randomitemgiver:reset_feedback 1t

tellraw @s {text: ""}
tellraw @s {text: ""}
tellraw @s {text: ""}
tellraw @s {text: ""}
tellraw @s {text: ""}
tellraw @s {text: ""}
tellraw @s {text: ""}
tellraw @s {text: ""}
tellraw @s {text: ""}
tellraw @s {text: ""}
tellraw @s {text: ""}
tellraw @s {text: ""}
tellraw @s {text: ""}
tellraw @s {text: ""}
tellraw @s {text: ""}
tellraw @s {text: ""}
tellraw @s {text: ""}
tellraw @s {text: ""}
tellraw @s {text: ""}
tellraw @s {text: ""}
tellraw @s {text: ""}
tellraw @s {text: ""}
tellraw @s {text: ""}
tellraw @s {text: ""}
tellraw @s {text: ""}
tellraw @s {text: ""}
tellraw @s {text: ""}
tellraw @s {text: ""}
tellraw @s {text: ""}
tellraw @s {text: ""}
tellraw @s {text: ""}
tellraw @s {text: ""}
tellraw @s {text: ""}
tellraw @s {text: ""}

tellraw @s {text: '«═════════════════════════»','bold':true,color: '#CE9178'}
tellraw @s [{text: 'Random Item Giver','bold':true,color: 'gold'},{text: ' - ','bold':true,color: 'gray'},{text: 'Settings ','bold':true,color: 'aqua'},{text: '(','bold':true,color: 'gray'},{text: 'Page 3','bold':true,color: 'aqua'},{text: ')','bold':true,color: 'gray'}]
tellraw @s {text: ' '}
tellraw @s {text: 'Reset all settings back to their default values:','italic':true,color: 'yellow'}
tellraw @s [{text: '[',color: 'gray',click_event:{'action':'run_command', command: '/function randomitemgiver:settings/confirmreset'},hover_event:{action: 'show_text', value: 'Reset all settings to their default values'}},{text: '➤',color: 'red',click_event:{'action':'run_command', command: '/function randomitemgiver:settings/confirmreset'},hover_event:{action: 'show_text', value: 'Reset all settings to their default values'}},{text: ']',color: 'gray',click_event:{'action':'run_command', command: '/function randomitemgiver:settings/confirmreset'},hover_event:{action: 'show_text', value: 'Reset all settings to their default values'}},{text: ' ',click_event:{'action':'run_command', command: '/function randomitemgiver:settings/confirmreset'},hover_event:{action: 'show_text', value: 'Reset all settings to their default values'}},{text: 'Reset settings',color: 'red',click_event:{'action':'run_command', command: '/function randomitemgiver:settings/confirmreset'},hover_event:{action: 'show_text', value: 'Reset all settings to their default values'}}]
tellraw @s {text: ' '}
tellraw @s [{text: '[',color: 'gray',click_event:{'action':'run_command', command: '/function randomitemgiver:menus/menu'},hover_event:{action: 'show_text', value: 'Go back to main menu'}},{text: '◀',click_event:{'action':'run_command', command: '/function randomitemgiver:menus/menu'},hover_event:{action: 'show_text', value: 'Go back to main menu'}},{text: ']',color: 'gray',click_event:{'action':'run_command', command: '/function randomitemgiver:menus/menu'},hover_event:{action: 'show_text', value: 'Go back to main menu'}},{text: ' ',click_event:{'action':'run_command', command: '/function randomitemgiver:menus/menu'},hover_event:{action: 'show_text', value: 'Go back to main menu'}},{text: 'back to menu',color: '#D86264',click_event:{'action':'run_command', command: '/function randomitemgiver:menus/menu'},hover_event:{action: 'show_text', value: 'Go back to main menu'}},{text: '                             [',color: 'gray',click_event:{'action':'run_command', command: '/function randomitemgiver:menus/settings2'},hover_event:{action: 'show_text', value: 'Show settings page 2'}},{text: '◀',click_event:{'action':'run_command', command: '/function randomitemgiver:menus/settings2'},hover_event:{action: 'show_text', value: 'Show settings page 2'}},{text: ']',color: 'gray',click_event:{'action':'run_command', command: '/function randomitemgiver:menus/settings2'},hover_event:{action: 'show_text', value: 'Show settings page 2'}},{text: ' ',click_event:{'action':'run_command', command: '/function randomitemgiver:menus/settings2'},hover_event:{action: 'show_text', value: 'Show settings page 2'}},{text: 'Page 2',color: '#69B4F7',click_event:{'action':'run_command', command: '/function randomitemgiver:menus/settings2'},hover_event:{action: 'show_text', value: 'Show settings page 2'}}]
tellraw @s {text: '«═════════════════════════»','bold':true,color: '#CE9178'}
