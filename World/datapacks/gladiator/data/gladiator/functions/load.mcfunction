team add gladiator_red
team add gladiator_blue
team modify gladiator_red color red
team modify gladiator_blue color blue
team modify gladiator_red friendlyFire false
team modify gladiator_blue friendlyFire false

scoreboard objectives add gladiator_class dummy
scoreboard objectives add cygnus dummy
scoreboard players set $gladiator_gamestate cygnus 0
scoreboard objectives add gladiator_death deathCount
scoreboard players reset @a gladiator_death

function gladiator:lobby/load