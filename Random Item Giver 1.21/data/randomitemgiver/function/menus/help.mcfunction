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
tellraw @s [{text: 'Random Item Giver','bold':true,color: 'gold'},{text: ' - ','bold':true,color: 'gray'},{text: 'Help','bold':true,color: 'green'}]
tellraw @s {text: ' '}
tellraw @s [{text: '(',color: 'gray'},{text: 'Q',color: 'yellow'},{text: ')',color: 'gray'},{text: ' How can I change the time at which I receive an item?',color: 'yellow'}]
tellraw @s [{text: '(',color: 'gray'},{text: 'A',color: '#FFFFAF'},{text: ')',color: 'gray'},{text: ' You can change it in the ',color: '#FFFFAF'},{text: 'settings menu','underlined':true,color: '#FFFFAF',click_event:{'action':'run_command', command: '/function randomitemgiver:menus/settings'},hover_event:{action: 'show_text', value: 'Open the settings menu'}},{text: ' which you can access through the main menu.',color: '#FFFFAF'}]
tellraw @s {text: ' '}
tellraw @s [{text: '(',color: 'gray'},{text: 'Q',color: 'yellow'},{text: ')',color: 'gray'},{text: ' Can I use this datapack in a video?',color: 'yellow'}]
tellraw @s [{text: '(',color: 'gray'},{text: 'A',color: '#FFFFAF'},{text: ')',color: 'gray'},{text: ' Yes, you can, but please don`t forget to give credits. A shoutout or link would be appreciated.',color: '#FFFFAF'}]
tellraw @s {text: ' '}
tellraw @s [{text: '(',color: 'gray'},{text: 'Q',color: 'yellow'},{text: ')',color: 'gray'},{text: ' Does this datapack work in Multiplayer?',color: 'yellow'}]
tellraw @s [{text: '(',color: 'gray'},{text: 'A',color: '#FFFFAF'},{text: ')',color: 'gray'},{text: ' Yes, it does! You can install this on your server like any other datapack.',color: '#FFFFAF'}]
tellraw @s {text: ' '}
tellraw @s [{text: '[',color: 'gray',click_event:{'action':'run_command', command: '/function randomitemgiver:menus/menu'},hover_event:{action: 'show_text', value: 'Go back to main menu'}},{text: '◀',click_event:{'action':'run_command', command: '/function randomitemgiver:menus/menu'},hover_event:{action: 'show_text', value: 'Go back to main menu'}},{text: ']',color: 'gray',click_event:{'action':'run_command', command: '/function randomitemgiver:menus/menu'},hover_event:{action: 'show_text', value: 'Go back to main menu'}},{text: ' ',click_event:{'action':'run_command', command: '/function randomitemgiver:menus/menu'},hover_event:{action: 'show_text', value: 'Go back to main menu'}},{text: 'back to menu',color: '#D86264',click_event:{'action':'run_command', command: '/function randomitemgiver:menus/menu'},hover_event:{action: 'show_text', value: 'Go back to main menu'}}]
tellraw @s {text: '«═════════════════════════»','bold':true,color: '#CE9178'}
