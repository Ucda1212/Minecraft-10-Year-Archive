scoreboard players remove $mobs boom 1
function boom:spawn/_offset
execute store result score $mob boom run random value 1..66
execute if score $mob boom matches 1..6 run function boom:spawn/tnt with storage boom:offset
execute if score $mob boom matches 7..8 run function boom:spawn/pig with storage boom:offset
execute if score $mob boom matches 9..10 run function boom:spawn/cow with storage boom:offset
execute if score $mob boom matches 11..12 run function boom:spawn/sheep with storage boom:offset
execute if score $mob boom matches 13..15 run function boom:spawn/chicken with storage boom:offset
execute if score $mob boom matches 16..20 run function boom:spawn/zombie with storage boom:offset
execute if score $mob boom matches 21..22 run function boom:spawn/villager with storage boom:offset
execute if score $mob boom matches 23..25 run function boom:spawn/spider with storage boom:offset
execute if score $mob boom matches 26..31 run function boom:spawn/fox with storage boom:offset
execute if score $mob boom matches 32..35 run function boom:spawn/blaze with storage boom:offset
execute if score $mob boom matches 36..37 run function boom:spawn/polar_bear with storage boom:offset
execute if score $mob boom matches 38..40 run function boom:spawn/slime with storage boom:offset
execute if score $mob boom matches 41..43 run function boom:spawn/panda with storage boom:offset
execute if score $mob boom matches 44..46 run function boom:spawn/piglin with storage boom:offset
execute if score $mob boom matches 47..51 run function boom:spawn/skeleton with storage boom:offset
execute if score $mob boom matches 52..55 run function boom:spawn/wandering_trader with storage boom:offset
execute if score $mob boom matches 56..57 run function boom:spawn/pillager with storage boom:offset
execute if score $mob boom matches 58..61 run function boom:spawn/snow_golem with storage boom:offset
execute if score $mob boom matches 62..66 run function boom:spawn/goat with storage boom:offset

execute if score $mobs boom matches 1.. run function boom:spawn/_random_mob