## set gamestate
scoreboard players set .gamestate bnsd.main 0

## reset times
scoreboard players reset * bnsd.time
scoreboard players set .time bnsd.main 0
scoreboard players set .starttimer bnsd.main 15

## update starttime textdisplay
data merge entity @e[type=text_display,limit=1,sort=nearest,tag=bnsd.start] {text:'[{"text":"Starting in: "},{"color":"gold","score":{"name":".starttimer","objective":"bnsd.main"}},{"text":"s"}]'}

## kill water armor_stand
kill @e[type=minecraft:armor_stand,tag=bnsd.waterlevel]

## reset arena
fill -389 51 -210 -353 69 -187 air replace minecraft:water
fill -389 51 -210 -353 69 -187 air replace minecraft:ladder
fill -389 51 -210 -353 69 -187 air replace minecraft:iron_trapdoor
fill -389 51 -210 -353 69 -187 air replace minecraft:iron_bars
fill -389 51 -210 -353 69 -187 air replace minecraft:light_gray_stained_glass_pane
fill -389 51 -210 -353 69 -187 air replace minecraft:stone_brick_wall
fill -389 51 -210 -353 69 -187 air replace minecraft:stone_brick_stairs
fill -389 51 -210 -353 69 -187 air replace minecraft:andesite_stairs

setblock -389 51 -210 structure_block{name:"bnsd.parkour",rotation:"NONE",mirror:"NONE",mode:"LOAD"} replace
setblock -389 52 -210 redstone_block

## setblock signs
setblock -356 52 -196 oak_wall_sign[facing=north]
setblock -355 72 -198 oak_wall_sign[facing=east]

## update signs
function bnsd:pregame/updatesign 

## reset hearts
scoreboard players reset * bnsd.hearts