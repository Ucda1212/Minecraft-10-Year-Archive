tag @e remove dpbar.msg_cooldown


execute store result storage dpbar:storage note float 0.01 run random value 0..100
execute positioned 330.53 86.00 373.52 run function dpbar:note with storage dpbar:storage

