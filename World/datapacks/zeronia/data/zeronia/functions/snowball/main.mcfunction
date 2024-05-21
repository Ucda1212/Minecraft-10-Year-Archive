tag @a[predicate=zeronia:holding_snowball,tag=!zeronia.holding_snowball] add zeronia.holding_snowball
execute as @a[scores={zeronia.throw_snowball=1..},tag=zeronia.holding_snowball] at @s run function zeronia:snowball/throw
tag @a[predicate=!zeronia:holding_snowball,tag=zeronia.holding_snowball] remove zeronia.holding_snowball
scoreboard players reset @a[tag=!zeronia.holding_snowball] zeronia.throw_snowball

execute as @e[type=arrow,tag=zeronia.snowball.arrow] at @s run function zeronia:snowball/arrowtick