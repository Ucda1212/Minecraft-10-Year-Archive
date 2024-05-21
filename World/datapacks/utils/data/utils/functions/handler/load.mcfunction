#> utils:handler/load

execute unless data storage utils:temp data run data modify storage utils:temp data set value {}

scoreboard objectives add utils.player.pos.x dummy
scoreboard objectives add utils.player.pos.y dummy
scoreboard objectives add utils.player.pos.z dummy
scoreboard objectives add utils.player.pos.pitch dummy
scoreboard objectives add utils.player.pos.yaw dummy

scoreboard objectives add utils.player.return minecraft.custom:minecraft.leave_game

# schedule
schedule clear utils:private/clocks/2t_a
schedule clear utils:private/clocks/2t_b
schedule clear utils:private/clocks/10t
schedule clear utils:private/clocks/1s
schedule clear utils:private/clocks/2s
schedule clear utils:private/clocks/60s

function utils:private/clocks/2t_a
function utils:private/clocks/10t
function utils:private/clocks/1s
function utils:private/clocks/2s
function utils:private/clocks/60s
