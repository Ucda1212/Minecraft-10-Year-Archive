scoreboard players set .counter zeronia.accidenttimer 0
execute as @e[type=text_display,tag=zeronia.accident] run data merge entity @s {text:'{"color":"dark_red","score":{"name":".counter","objective":"zeronia.accidenttimer"}}'}
schedule function zeronia:accidentcounter/increase 72d