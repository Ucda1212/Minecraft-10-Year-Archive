#[ Item Pickup ]#

#: revoke pickup advancement
advancement revoke @s only turfwars:item/pickup

#: clear enemy wool
execute if entity @s[team=turfwars.dmd_team] run clear @s blue_wool
execute if entity @s[team=turfwars.lps_team] run clear @s light_blue_wool
