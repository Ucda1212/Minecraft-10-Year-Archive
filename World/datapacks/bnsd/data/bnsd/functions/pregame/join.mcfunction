tag @s add bnsd.player
tp @s -356 51 -198 180 0
playsound minecraft:block.note_block.bit master @s ~ ~ ~ 10 2

## announce to players in prelobby
tellraw @a[tag=bnsd.player] [{"text":"<!> ","bold": false},{"selector":"@s","bold":true,"color":"gold"},{"text":" joined Toxic Escape!","bold": false}]

## set player count
function bnsd:pregame/countplayers

## update sign
function bnsd:pregame/updatesign

## start timer countdown
execute if score .starttimer bnsd.main matches 15 run schedule function bnsd:pregame/starttimer 1s