setblock 65 69 42 air
particle block{block_state:"minecraft:stone"} 65 69 42 0 0 0 1 2
advancement revoke @s only zeronia:treasure/clickbtn1
schedule function zeronia:treasure/buttons/place1 2s
function zeronia:treasure/buttons/reward