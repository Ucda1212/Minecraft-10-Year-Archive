kill @e[type=item_frame,tag=plag.trophy]

# reset scores
scoreboard players set #villager plag.trophy 0
scoreboard players set #elytra plag.trophy 0
scoreboard players set #spacemen plag.trophy 0
scoreboard players set #maze plag.trophy 0
scoreboard players set #toxic plag.trophy 0
scoreboard players set #blackout plag.trophy 0
scoreboard players set #celebrity plag.trophy 0
scoreboard players set #sheep plag.trophy 0
scoreboard players set #stuffy plag.trophy 0
scoreboard players set #trophy plag.trophy 0

# reset trophies
summon item_frame -56 74 6 {Silent:1b,Tags:["plag.trophy", "plag.trophy.stuffy"],Item:{id:"stick",Count:1b,components:{"minecraft:custom_model_data":4000099}},ItemRotation:6b,Facing:1b,Fixed:1b,Invisible:1b}
summon item_frame -56 74 5 {Silent:1b,Tags:["plag.trophy", "plag.trophy.spacemen"],Item:{id:"stick",Count:1b,components:{"minecraft:custom_model_data":4000099}},ItemRotation:6b,Facing:1b,Fixed:1b,Invisible:1b}
summon item_frame -56 74 4 {Silent:1b,Tags:["plag.trophy", "plag.trophy.elytra"],Item:{id:"stick",Count:1b,components:{"minecraft:custom_model_data":4000099}},ItemRotation:6b,Facing:1b,Fixed:1b,Invisible:1b}
summon item_frame -56 74 3 {Silent:1b,Tags:["plag.trophy", "plag.trophy.maze"],Item:{id:"stick",Count:1b,components:{"minecraft:custom_model_data":4000099}},ItemRotation:6b,Facing:1b,Fixed:1b,Invisible:1b}
summon item_frame -56 74 2 {Silent:1b,Tags:["plag.trophy", "plag.trophy.toxic"],Item:{id:"stick",Count:1b,components:{"minecraft:custom_model_data":4000099}},ItemRotation:6b,Facing:1b,Fixed:1b,Invisible:1b}

summon item_frame -56 76 6 {Silent:1b,Tags:["plag.trophy", "plag.trophy.villager", "plag.trophy.move"],Item:{id:"stick",Count:1b,components:{"minecraft:custom_model_data":4000099}},ItemRotation:6b,Facing:1b,Fixed:1b,Invisible:1b}
summon item_frame -56 76 5 {Silent:1b,Tags:["plag.trophy", "plag.trophy.blackout", "plag.trophy.move"],Item:{id:"stick",Count:1b,components:{"minecraft:custom_model_data":4000099}},ItemRotation:6b,Facing:1b,Fixed:1b,Invisible:1b}
summon item_frame -56 76 4 {Silent:1b,Tags:["plag.trophy", "plag.trophy.trophy", "plag.trophy.move"],Item:{id:"stick",Count:1b,components:{"minecraft:custom_model_data":4000099}},ItemRotation:6b,Facing:1b,Fixed:1b,Invisible:1b}
summon item_frame -56 76 3 {Silent:1b,Tags:["plag.trophy", "plag.trophy.sheep", "plag.trophy.move"],Item:{id:"stick",Count:1b,components:{"minecraft:custom_model_data":4000099}},ItemRotation:6b,Facing:1b,Fixed:1b,Invisible:1b}
summon item_frame -56 76 2 {Silent:1b,Tags:["plag.trophy", "plag.trophy.celebrity"],Item:{id:"stick",Count:1b,components:{"minecraft:custom_model_data":4000099}},ItemRotation:6b,Facing:1b,Fixed:1b,Invisible:1b}

execute as @e[tag=plag.trophy.move] at @s run tp @s ~ ~ ~-.5