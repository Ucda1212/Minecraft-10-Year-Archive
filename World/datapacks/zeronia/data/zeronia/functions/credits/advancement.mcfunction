advancement revoke @s only zeronia:credits/zone
execute if score .cooldown zeronia.rollingcredits matches 0 run function zeronia:credits/start
scoreboard players set .cooldown zeronia.rollingcredits 50