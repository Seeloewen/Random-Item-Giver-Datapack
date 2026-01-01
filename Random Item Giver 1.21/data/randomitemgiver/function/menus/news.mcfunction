gamerule send_command_feedback false
schedule function randomitemgiver:reset_feedback 1t

tellraw @s {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}

tellraw @s {text: '«═════════════════════════»','bold':true,color: '#CE9178'}
tellraw @s [{text: 'Random Item Giver','bold':true,color: 'gold'},{text: ' -','bold':true,color: 'gray'},{text: ' News','bold':true,color: 'light_purple'}]
tellraw @s {text: ' '}
tellraw @s [{text: 'Version',color: '#F53377'},{text: ' 1.5.6',color: '#F53377'},{text: ' -',color: 'gray'},{text: ' What`s new?',color: 'yellow'}]
tellraw @s [{text: '(',color: 'gray'},{text: '+',color: 'dark_green'},{text: ') ',color: 'gray'},{text: 'Added all new items from 1.21.9 & 1.21.11',color: '#FFFFB0'}]
tellraw @s [{text: '(',color: 'gray'},{text: '+',color: 'dark_green'},{text: ') ',color: 'gray'},{text: 'Added remaining seconds to timer bossbar',color: '#FFFFB0'}]
tellraw @s [{text: '(',color: 'gray'},{text: '+',color: 'dark_green'},{text: ') ',color: 'gray'},{text: 'Added warning when receiving useless creative-only items',color: '#FFFFB0'}]
tellraw @s [{text: '(',color: 'gray'},{text: '+',color: 'dark_green'},{text: ') ',color: 'gray'},{text: 'Added missing chicken eggs from 1.21.5',color: '#FFFFB0'}]
tellraw @s [{text:"(",color:"gray"},{text:"⁎",color:"dark_aqua"},{text:") ",color:"gray"},{text:"Fixed several spawn eggs appearing in normal loot tables",color:"#FFFFB0"}]
tellraw @s [{text:"(",color:"gray"},{text:"⁎",color:"dark_aqua"},{text:") ",color:"gray"},{text:"Moved smithing templates and pottery sherds to separate loot tables",color:"#FFFFB0"}]
tellraw @s [{text:"(",color:"gray"},{text:"⁎",color:"dark_aqua"},{text:") ",color:"gray"},{text:"Tweaked chances for items in specific groups",color:"#FFFFB0"}]
tellraw @s [{text:"(",color:"gray"},{text:"⁎",color:"dark_aqua"},{text:") ",color:"gray"},{text:"Sidebar display of received item amount is now colored",color:"#FFFFB0"}]
tellraw @s [{text:"(",color:"gray"},{text:"⁎",color:"dark_aqua"},{text:") ",color:"gray"},{text:"Slightly overhauled help menu",color:"#FFFFB0"}]
tellraw @s [{text:"(",color:"gray"},{text:"⁎",color:"dark_aqua"},{text:") ",color:"gray"},{text:"Updated to 1.21.11",color:"#FFFFB0"}]
tellraw @s [{text:"(",color:"gray"},{text:"⁎",color:"dark_aqua"},{text:") ",color:"gray"},{text:"Reworked settings using dialogs",color:"#FFFFB0"}]
tellraw @s [{text:"(",color:"gray"},{text:"⁎",color:"dark_aqua"},{text:") ",color:"gray"},{text:"Menus are now opened with triggers",color:"#FFFFB0"}]
tellraw @s [{text:"(",color:"gray"},{text:"⁎",color:"dark_aqua"},{text:") ",color:"gray"},{text:"Settings are now saved in data storage",color:"#FFFFB0"}]
tellraw @s [{text:"(",color:"gray"},{text:"⁎",color:"dark_aqua"},{text:") ",color:"gray"},{text:"Reworked many other internal components",color:"#FFFFB0"}]


tellraw @s {text: ' '}
tellraw @s [{text: '[',color: 'gray',click_event:{'action':'run_command', command: '/trigger menuTrigger set 11'},hover_event:{action: 'show_text', value: 'Go back to main menu'}},{text: '◀',click_event:{'action':'run_command', command: '/trigger menuTrigger set 11'},hover_event:{action: 'show_text', value: 'Go back to main menu'}},{text: ']',color: 'gray',click_event:{'action':'run_command', command: '/trigger menuTrigger set 11'},hover_event:{action: 'show_text', value: 'Go back to main menu'}},{text: ' ',click_event:{'action':'run_command', command: '/trigger menuTrigger set 11'},hover_event:{action: 'show_text', value: 'Go back to main menu'}},{text: 'back to menu',color: '#D86264',click_event:{'action':'run_command', command: '/trigger menuTrigger set 11'},hover_event:{action: 'show_text', value: 'Go back to main menu'}}]
tellraw @s {text: '«═════════════════════════»','bold':true,color: '#CE9178'}

#Templates:
#tellraw @s [{text: '(',color: 'gray'},{text: '+',color: 'dark_green'},{text: ') ',color: 'gray'},{text: 'Added X',color: '#FFFFB0'}]
#tellraw @s [{text: '(',color: 'gray'},{text: '⁎',color: 'dark_aqua'},{text: ') ',color: 'gray'},{text: 'Changed X',color: '#FFFFB0'}]
#tellraw @s [{text: '(',color: 'gray'},{text: '-',color: 'dark_red'},{text: ') ',color: 'gray'},{text: 'Removed X',color: '#FFFFB0'}]
