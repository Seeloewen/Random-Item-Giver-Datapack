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
tellraw @s [{text: 'Random Item Giver Datapack','bold':true,color: 'gold'}]
tellraw @s {text: ' '}
tellraw @s [{text: '[',color: 'gray',click_event:{'action':'run_command', command: '/function randomitemgiver:menus/settings'},hover_event:{action: 'show_text', value: 'Show the datapack settings'}},{text: '➤',color: 'aqua',click_event:{'action':'run_command', command: '/function randomitemgiver:menus/settings'},hover_event:{action: 'show_text', value: 'Show the datapack settings'}},{text: ']',color: 'gray',click_event:{'action':'run_command', command: '/function randomitemgiver:menus/settings'},hover_event:{action: 'show_text', value: 'Show the datapack settings'}},{text: ' ',click_event:{'action':'run_command', command: '/function randomitemgiver:menus/settings'},hover_event:{action: 'show_text', value: 'Show the datapack settings'}},{text: 'Open the datapack settings',color: 'aqua',click_event:{'action':'run_command', command: '/function randomitemgiver:menus/settings'},hover_event:{action: 'show_text', value: 'Show the datapack settings'}}]
tellraw @s [{text: '[',color: 'gray',click_event:{'action':'run_command', command: '/function randomitemgiver:uninstall'},hover_event:{action: 'show_text', value: 'Uninstall the datapack'}},{text: '✖',color: 'red',click_event:{'action':'run_command', command: '/function randomitemgiver:uninstall'},hover_event:{action: 'show_text', value: 'Uninstall the datapack'}},{text: '] ',color: 'gray',click_event:{'action':'run_command', command: '/function randomitemgiver:uninstall'},hover_event:{action: 'show_text', value: 'Uninstall the datapack'}},{text: 'Remove the datapack from your world',color: 'red',click_event:{'action':'run_command', command: '/function randomitemgiver:uninstall'},hover_event:{action: 'show_text', value: 'Uninstall the datapack'}}]
tellraw @s {text: ' '}
tellraw @s [{text: '[',color: 'gray',click_event:{'action':'run_command', command: '/function randomitemgiver:menus/news'},hover_event:{action: 'show_text', value: 'See what`s new in this version'}},{text: '✿',color: 'yellow',click_event:{'action':'run_command', command: '/function randomitemgiver:menus/news'},hover_event:{action: 'show_text', value: 'See what`s new in this version'}},{text: '] ',color: 'gray',click_event:{'action':'run_command', command: '/function randomitemgiver:menus/news'},hover_event:{action: 'show_text', value: 'See what`s new in this version'}},{text: 'View the changelog for this version',color: 'yellow',click_event:{'action':'run_command', command: '/function randomitemgiver:menus/news'},hover_event:{action: 'show_text', value: 'See what`s new in this version'}}]
tellraw @s [{text: '[',color: 'gray',click_event:{'action':'run_command', command: '/function randomitemgiver:menus/credits'},hover_event:{action: 'show_text', value: 'See who contributed to the datapack'}},{text: '✿',color: 'yellow',click_event:{'action':'run_command', command: '/function randomitemgiver:menus/credits'},hover_event:{action: 'show_text', value: 'See who contributed to the datapack'}},{text: '] ',color: 'gray',click_event:{'action':'run_command', command: '/function randomitemgiver:menus/credits'},hover_event:{action: 'show_text', value: 'See who contributed to the datapack'}},{text: 'Open the list of contributers',color: 'yellow',click_event:{'action':'run_command', command: '/function randomitemgiver:menus/credits'},hover_event:{action: 'show_text', value: 'See who contributed to the datapack'}}]
tellraw @s {text: ' '}
tellraw @s [{text: '[',color: 'gray',click_event:{'action':'run_command', command: '/function randomitemgiver:menus/info'},hover_event:{action: 'show_text', value: 'View some more information about the datapack'}},{text: '➡',color: 'green',click_event:{'action':'run_command', command: '/function randomitemgiver:menus/info'},hover_event:{action: 'show_text', value: 'View some more information about the datapack'}},{text: '] ',color: 'gray',click_event:{'action':'run_command', command: '/function randomitemgiver:menus/info'},hover_event:{action: 'show_text', value: 'View some more information about the datapack'}},{text: 'About the datapack',color: 'green',click_event:{'action':'run_command', command: '/function randomitemgiver:menus/info'},hover_event:{action: 'show_text', value: 'View some more information about the datapack'}}]
tellraw @s [{text: '[',color: 'gray',click_event:{'action':'run_command', command: '/function randomitemgiver:menus/help'},hover_event:{action: 'show_text', value: 'View additional help'}},{text: '➡',color: 'green',click_event:{'action':'run_command', command: '/function randomitemgiver:menus/help'},hover_event:{action: 'show_text', value: 'View additional help'}},{text: '] ',color: 'gray',click_event:{'action':'run_command', command: '/function randomitemgiver:menus/help'},hover_event:{action: 'show_text', value: 'View additional help'}},{text: 'Get help with the datapack',color: 'green',click_event:{'action':'run_command', command: '/function randomitemgiver:menus/help'},hover_event:{action: 'show_text', value: 'View additional help'}}]
tellraw @s [{text: '[',color: 'gray',click_event:{'action':'run_command', command: '/function randomitemgiver:menus/links'},hover_event:{action: 'show_text', value: 'See links where you can find the datapack on the internet'}},{text: '➡',color: 'green',click_event:{'action':'run_command', command: '/function randomitemgiver:menus/links'},hover_event:{action: 'show_text', value: 'See links where you can find the datapack on the internet'}},{text: ']',color: 'gray',click_event:{'action':'run_command', command: '/function randomitemgiver:menus/links'},hover_event:{action: 'show_text', value: 'See links where you can find the datapack on the internet'}},{text: ' ',click_event:{'action':'run_command', command: '/function randomitemgiver:menus/links'},hover_event:{action: 'show_text', value: 'See links where you can find the datapack on the internet'}},{text: 'View additional links',color: 'green',click_event:{'action':'run_command', command: '/function randomitemgiver:menus/links'},hover_event:{action: 'show_text', value: 'See links where you can find the datapack on the internet'}}]
tellraw @s {text: '«═════════════════════════»','bold':true,color: '#CE9178'}
