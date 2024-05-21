scoreboard players add .counter zeronia.accidenttimer 1
execute as @e[type=text_display,tag=zeronia.accident] run data merge entity @s {text:'{"color":"dark_red","score":{"name":".counter","objective":"zeronia.accidenttimer"}}'}
schedule clear zeronia:accidentcounter/increase
schedule function zeronia:accidentcounter/increase 72d