## RESETS LEADERBOARD
scoreboard players set .record.t bnsd.recordtime 100000
data merge entity @e[type=text_display,limit=1,sort=nearest,tag=bnsd.lb2] {text:'[{"text":"None"},{"color":"gold","text":" - "},{"text":"00:00:00"}]'}
tag @s remove bnsd.newrecord