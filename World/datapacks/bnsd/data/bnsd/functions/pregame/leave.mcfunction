## announce to players
tellraw @a[tag=bnsd.player] [{"text":"<!> ","bold": false},{"selector":"@s","bold":true,"color":"gold"},{"text":" left Toxic Escape!","bold": false}]
playsound minecraft:block.note_block.bit master @s ~ ~ ~ 10 1

tag @s remove bnsd.player
tp @s -352 71 -198 ~ ~

## set player count
function bnsd:pregame/countplayers

## update sign
function bnsd:pregame/updatesign

## reset starttime
execute if score .players bnsd.main matches 0 run scoreboard players set .starttimer bnsd.main 15