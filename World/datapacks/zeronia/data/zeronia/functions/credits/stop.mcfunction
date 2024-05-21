#> Stop the currently running credits
execute if score .credits zeronia.rollingcredits matches 0 run return 0
kill @e[tag=zeronia.rollingcredits]
kill @e[tag=zeronia.credits]
kill @e[tag=zeronia.credits.particle]

#> Set the credit timer to 0
scoreboard players set .credits zeronia.rollingcredits 0

#> Spawn back the title
summon text_display -42 73.5 -18 {Rotation:[270F,0F],Tags:["zeronia.credits"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[.5f,.5f,.5f]},text:'{"text":"\\uE000","font":"realms:font"}',background:0,shadow:0b,height:3,width:3}
summon text_display -42 71 -18 {Rotation:[270F,0F],Tags:["zeronia.credits"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,3f,3f]},text:'[{"text":"Minecraft Realms "},{"text":"10th","color":"gold"},{"text":"\\nAnniversary Map!"}]',background:0,shadow:1b,height:3,width:5}