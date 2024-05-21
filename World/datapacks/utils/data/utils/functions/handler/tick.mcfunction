#> utils:handler/tick

execute as @a at @s run function utils:private/instantiated_players/tick
execute as @e at @s run function #utils:tick/instantiated_entities

function #utils:tick