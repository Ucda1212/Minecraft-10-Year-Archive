# -1 in each direction to not spawn on edges
execute store result storage boom:offset x int 1 run random value 1..25
execute store result storage boom:offset y int 1 run random value 1..25