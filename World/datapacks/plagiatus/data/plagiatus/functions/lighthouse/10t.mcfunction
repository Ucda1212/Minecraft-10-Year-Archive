particle small_flame 5.2 66.1 56.98 0 0 0 0 1 force
particle small_flame 5.2 66.1 57.15 0 0 0 0 1 force
particle small_flame 5.2 66.1 56.83 0 0 0 0 1 force

execute store result score #r plag.tmp run random value 0..5

execute if score #r plag.tmp matches 0 run particle smoke 5.2 66.1 56.98 0 0 0.1 0 1 force