execute store success score @s zeronia.throw_snowball on origin if entity @s[tag=zeronia.self]
execute if score @s zeronia.throw_snowball matches 1 run tag @s add zeronia.snowball.matched
tag @s add zeronia.snowball.init