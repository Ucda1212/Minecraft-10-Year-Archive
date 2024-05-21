# team select
setblock 11 97 524 crimson_wall_sign[facing=west]{front_text:{color:"red",has_glowing_text:1b,messages:['{"text":""}','{"text":"Join Red Team","clickEvent":{"action":"run_command","value":"function gladiator:lobby/team_select/join_red"}}','{"text":""}','{"text":""}']},is_waxed:1b} replace
setblock 11 97 525 crimson_wall_sign[facing=west]{front_text:{color:"gray",has_glowing_text:1b,messages:['{"text":""}','{"text":"Leave Team","clickEvent":{"action":"run_command","value":"function gladiator:lobby/team_select/spectate"}}','{"text":"(Spectate)"}','{"text":""}']},is_waxed:1b} replace
setblock 11 97 526 crimson_wall_sign[facing=west]{front_text:{color:"blue",has_glowing_text:1b,messages:['{"text":""}','{"text":"Join Blue Team","clickEvent":{"action":"run_command","value":"function gladiator:lobby/team_select/join_blue"}}','{"text":""}','{"text":""}']},is_waxed:1b} replace

# class select
setblock 11 95 523 crimson_wall_sign[facing=west]{front_text:{color:"white",has_glowing_text:1b,messages:['{"text":""}','{"text":"Warrior","clickEvent":{"action":"run_command","value":"function gladiator:lobby/class_select/0_warrior"}}','{"text":""}','{"text":""}']},is_waxed:1b} replace
setblock 11 95 524 crimson_wall_sign[facing=west]{front_text:{color:"white",has_glowing_text:1b,messages:['{"text":""}','{"text":"Ranger","clickEvent":{"action":"run_command","value":"function gladiator:lobby/class_select/1_ranger"}}','{"text":""}','{"text":""}']},is_waxed:1b} replace
setblock 11 95 525 crimson_wall_sign[facing=west]{front_text:{color:"white",has_glowing_text:1b,messages:['{"text":""}','{"text":"Lumberjack","clickEvent":{"action":"run_command","value":"function gladiator:lobby/class_select/2_lumberjack"}}','{"text":""}','{"text":""}']},is_waxed:1b} replace
setblock 11 95 526 crimson_wall_sign[facing=west]{front_text:{color:"white",has_glowing_text:1b,messages:['{"text":""}','{"text":"Mage","clickEvent":{"action":"run_command","value":"function gladiator:lobby/class_select/3_mage"}}','{"text":""}','{"text":""}']},is_waxed:1b} replace
setblock 11 95 527 crimson_wall_sign[facing=west]{front_text:{color:"white",has_glowing_text:1b,messages:['{"text":""}','{"text":"Equestrian","clickEvent":{"action":"run_command","value":"function gladiator:lobby/class_select/4_equestrian"}}','{"text":""}','{"text":""}']},is_waxed:1b} replace

#start game
setblock -1 95 530 minecraft:crimson_wall_sign[facing=north]{front_text:{color:"white",has_glowing_text:1b,messages:['""','{"text":"Start Game","clickEvent":{"action":"run_command","value":"function gladiator:game/start"}}','""','""']},is_waxed:1b}

#text displays
kill @e[type=text_display,tag=cygnus_gladiator]
summon text_display 11.999 98.00 525.50 {shadow:1b,Rotation:[90F,0F],Tags:["cygnus_gladiator"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,3f,3f]},text:'{"text":"Team Select:"}',background:0}
summon text_display 11.999 96.00 525.50 {shadow:1b,Rotation:[90F,0F],Tags:["cygnus_gladiator"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,3f,3f]},text:'{"text":"Class Select:"}',background:0}
summon text_display -12.999 96.09 525.50 {shadow:1b,Rotation:[-90F,0F],Tags:["cygnus_gladiator"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,3f,3f]},text:'{"text":"The menu\\nis on the\\nother side."}',background:0}

#reset death score
scoreboard players reset @a gladiator_death