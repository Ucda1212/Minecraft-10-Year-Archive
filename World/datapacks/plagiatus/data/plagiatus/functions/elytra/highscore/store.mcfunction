#> plagiatus:elytra/highscore/store
loot replace block -1 116 57 container.0 loot plagiatus:set_name
# w Plagiatus store me!

$execute unless data storage plag:elytra scores[{uuid:$(UUID)}] run data modify storage plag:elytra scores append value {uuid:$(UUID)}

$data modify storage plag:elytra scores[{uuid:$(UUID)}].name set from block -1 116 57 Items[0].tag.SkullOwner.Name
$execute store result storage plag:elytra scores[{uuid:$(UUID)}].score int 1 run scoreboard players get @s plag.elytra.timer

execute store result storage plag:elytra tmp.ms int 1 run scoreboard players get #ms plag.tmp
execute store result storage plag:elytra tmp.sec int 1 run scoreboard players get #sec plag.tmp
execute store result storage plag:elytra tmp.min int 1 run scoreboard players get #min plag.tmp

data modify storage plag:elytra tmp.UUID set from entity @s UUID

function plagiatus:elytra/highscore/store_time with storage plag:elytra tmp

function plagiatus:elytra/highscore/update_display