#> flcme:start
kill @e[type=text_display,tag=flcme.textdisplay]
forceload add 270 -9
fill 279 69 -17 279 69 -16 air
clone 266 61 -10 266 60 -13 279 69 -18
summon minecraft:interaction 279.65 70.21 -18 {height:0.56,width:0.56,Tags:["flcme_MS_left","flcmeinterclear"]}
summon minecraft:interaction 279.65 70.21 -17 {height:0.56,width:0.56,Tags:["flcme_MS_up","flcmeinterclear"]}
summon minecraft:interaction 279.65 70.21 -16 {height:0.56,width:0.56,Tags:["flcme_MS_down","flcmeinterclear"]}
summon minecraft:interaction 279.65 70.21 -15 {height:0.56,width:0.56,Tags:["flcme_MS_right","flcmeinterclear"]}
summon minecraft:interaction 279.65 69.21 -17 {height:0.56,width:0.56,Tags:["flcme_MS_mine","flcmeinterclear"]}
summon minecraft:interaction 279.65 69.21 -16 {height:0.56,width:0.56,Tags:["flcme_MS_crate","flcmeinterclear"]}
forceload remove 270 -9
tellraw @a [{"text":"[MS] forceload is currently made to remove early. fix this NOW! loser.."}]
summon marker 279 58 -17 {data:{flcme:"reader"}}
summon armor_stand 283.9 72.75 -17 {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"player_head",Count:1b,tag:{SkullOwner:"Quinnsect"}}],HandItems:[{},{}],CustomName:'{"text":"flcme.medusa"}'}
team join flcme.color @e[name=flcme.medusa]
effect give @e[name=flcme.medusa] minecraft:glowing infinite






