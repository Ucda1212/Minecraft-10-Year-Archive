#> utils:private/instantiated_players/tick

# fetch data
## removed bc of intense lag
# data modify storage utils:temp data.Pos set from entity @s Pos
# data modify storage utils:temp data.Rotation set from entity @s Rotation
# execute store result score @s utils.player.pos.x run data get storage utils:temp data.Pos[0] 100
# execute store result score @s utils.player.pos.y run data get storage utils:temp data.Pos[1] 100
# execute store result score @s utils.player.pos.z run data get storage utils:temp data.Pos[2] 100
# execute store result score @s utils.player.pos.yaw run data get storage utils:temp data.Rotation[0] 100
# execute store result score @s utils.player.pos.pitch run data get storage utils:temp data.Rotation[1] 100


# run the call for everyone
function #utils:tick/instantiated_players

