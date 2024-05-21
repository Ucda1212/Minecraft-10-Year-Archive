execute store result storage plag:elytra tmp.counter int 1 run scoreboard players get #counter plag.tmp

data modify storage plag:elytra tmp.element set from storage plag:elytra tmp.scores[0]
data remove storage plag:elytra tmp.scores[0]

data modify storage plag:elytra tmp.element.counter set from storage plag:elytra tmp.counter

function plagiatus:elytra/highscore/update_display_string with storage plag:elytra tmp.element

scoreboard players add #counter plag.tmp 1
execute if score #counter plag.tmp <= #max plag.tmp run function plagiatus:elytra/highscore/update_display_recursive