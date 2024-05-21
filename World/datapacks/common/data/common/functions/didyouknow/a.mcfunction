#> common:didyouknow/a

schedule function common:didyouknow/b 10t

execute positioned -5 70 -7 run data modify entity @e[type=minecraft:text_display,tag=did_you_know_sign,distance=..1,limit=1] text set value '[{"text":"ᴅɪᴅ ","bold":true,"color":"#FFFF00"},{"text":"ʏᴏᴜ ","bold":true,"color":"#FF8000"},{"text":"ᴋɴᴏᴡ ","bold":true,"color":"#FFFF00"},{"text":"?","bold":true,"color":"#FF8000"}]'


#setblock -6 70 -9 minecraft:bamboo_wall_sign[facing=west,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:['""','""','""','""']},front_text:{color:"yellow",has_glowing_text:1b,messages:['"██    █  ██     "','"█  █  █  █  █   "','"█  █  █  █  █   "','"██    █  ██     "']},is_waxed:1b}
#setblock -6 70 -8 minecraft:birch_wall_sign[facing=west,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:['""','""','""','""']},front_text:{color:"orange",has_glowing_text:1b,messages:['"█  █   ██   █ █"','"█  █  █  █  █ █"','"  █    █  █  █ █"','"  █     ██    ██"']},is_waxed:1b}
#setblock -6 70 -7 minecraft:bamboo_wall_sign[facing=west,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:['""','""','""','""']},front_text:{color:"yellow",has_glowing_text:1b,messages:['"     █  █  █    █"','"     ██    ██  █"','"     ██    █  ██"','"     █  █  █    █"']},is_waxed:1b}
#setblock -6 70 -6 minecraft:bamboo_wall_sign[facing=west,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:['""','""','""','""']},front_text:{color:"yellow",has_glowing_text:1b,messages:['"██   █  █  █  "','"█  █  █  █  █   "','"█  █  █  █  █   "','"██     █  █    "']},is_waxed:1b}
#setblock -6 70 -5 minecraft:birch_wall_sign[facing=west,waterlogged=false]{back_text:{color:"black",has_glowing_text:0b,messages:['""','""','""','""']},front_text:{color:"orange",has_glowing_text:1b,messages:['"██"','"█   █"','"  ▀"','" █"']},is_waxed:1b}
