scoreboard players set door dpbar.bool 0
fill 318 84 370 318 85 371 air

playsound minecraft:block.bamboo_wood_fence_gate.close master @a[distance=..10] 318.73 84.00 370.95 0.4 0 1


setblock 318 84 370 minecraft:dark_oak_door[facing=west,half=lower,hinge=right,open=false,powered=false]
setblock 318 85 370 minecraft:dark_oak_door[facing=west,half=upper,hinge=right,open=false,powered=false]

setblock 318 84 371 minecraft:dark_oak_door[facing=west,half=lower,hinge=left,open=false,powered=false]
setblock 318 85 371 minecraft:dark_oak_door[facing=west,half=upper,hinge=left,open=false,powered=false]

