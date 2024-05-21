tag @s add zeronia.self
execute as @e[type=snowball,tag=!zeronia.snowball.init] run function zeronia:snowball/init
tag @s remove zeronia.self
execute as @e[type=snowball,tag=zeronia.snowball.matched,limit=1] run function zeronia:snowball/matched
scoreboard players reset @s zeronia.throw_snowball