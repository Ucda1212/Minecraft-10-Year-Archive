scoreboard players add Global. polyform.identifier 1
scoreboard players operation @s polyform.identifier = Global. polyform.identifier

fill ~-7 ~ ~-7 ~7 ~2 ~7 minecraft:air
fill ~-7 ~ ~-7 ~7 ~ ~7 minecraft:black_concrete

setblock ~ ~ ~ light_gray_concrete

#setblock ~-7 ~ ~-7 red_concrete
#setblock ~-7 ~ ~7 red_concrete
#setblock ~7 ~ ~-7 red_concrete
#setblock ~7 ~ ~7 red_concrete
#setblock ~ ~ ~-7 red_concrete
#setblock ~ ~ ~7 red_concrete
#setblock ~7 ~ ~ red_concrete
#setblock ~-7 ~ ~ red_concrete

setblock ~-7 ~ ~-7 barrier
setblock ~-7 ~ ~7 barrier
setblock ~7 ~ ~-7 barrier
setblock ~7 ~ ~7 barrier
setblock ~ ~ ~-7 barrier
setblock ~ ~ ~7 barrier
setblock ~7 ~ ~ barrier
setblock ~-7 ~ ~ barrier

summon minecraft:block_display ~-7 ~1.5 ~-7 {Tags:["polyform.red_corner"] ,block_state: {Name: "minecraft:red_concrete"}, glow_color_override: 3618615, Glowing:true, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 0.15f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}
summon minecraft:block_display ~-7 ~1.5 ~7 {Tags:["polyform.red_corner"] ,block_state: {Name: "minecraft:red_concrete"}, glow_color_override: 3618615, Glowing:true, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 0.15f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}
summon minecraft:block_display ~7 ~1.5 ~-7 {Tags:["polyform.red_corner"] ,block_state: {Name: "minecraft:red_concrete"}, glow_color_override: 3618615, Glowing:true, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 0.15f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}
summon minecraft:block_display ~7 ~1.5 ~7 {Tags:["polyform.red_corner"] ,block_state: {Name: "minecraft:red_concrete"}, glow_color_override: 3618615, Glowing:true, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 0.15f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}
summon minecraft:block_display ~ ~1.5 ~-7 {Tags:["polyform.red_corner"] ,block_state: {Name: "minecraft:red_concrete"}, glow_color_override: 3618615, Glowing:true, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 0.15f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}
summon minecraft:block_display ~ ~1.5 ~7 {Tags:["polyform.red_corner"] ,block_state: {Name: "minecraft:red_concrete"}, glow_color_override: 3618615, Glowing:true, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 0.15f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}
summon minecraft:block_display ~7 ~1.5 ~ {Tags:["polyform.red_corner"] ,block_state: {Name: "minecraft:red_concrete"}, glow_color_override: 3618615, Glowing:true, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 0.15f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}
summon minecraft:block_display ~-7 ~1.5 ~ {Tags:["polyform.red_corner"] ,block_state: {Name: "minecraft:red_concrete"}, glow_color_override: 3618615, Glowing:true, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 0.15f, 1.0f], translation: [-0.5f, -0.5f, -0.5f]}}
function polyform:place_interactions

setblock ~-6 ~ ~-6 blue_concrete
setblock ~-5 ~ ~-5 blue_concrete
setblock ~-4 ~ ~-4 blue_concrete
setblock ~-3 ~ ~-3 blue_concrete

setblock ~-6 ~ ~6 blue_concrete
setblock ~-5 ~ ~5 blue_concrete
setblock ~-4 ~ ~4 blue_concrete
setblock ~-3 ~ ~3 blue_concrete

setblock ~6 ~ ~-6 blue_concrete
setblock ~5 ~ ~-5 blue_concrete
setblock ~4 ~ ~-4 blue_concrete
setblock ~3 ~ ~-3 blue_concrete

setblock ~6 ~ ~6 blue_concrete
setblock ~5 ~ ~5 blue_concrete
setblock ~4 ~ ~4 blue_concrete
setblock ~3 ~ ~3 blue_concrete

setblock ~-2 ~ ~-2 yellow_concrete
setblock ~-2 ~ ~2 yellow_concrete
setblock ~2 ~ ~-2 yellow_concrete
setblock ~2 ~ ~2 yellow_concrete

setblock ~-6 ~ ~-2 yellow_concrete
setblock ~-6 ~ ~2 yellow_concrete
setblock ~-2 ~ ~-6 yellow_concrete
setblock ~-2 ~ ~6 yellow_concrete
setblock ~2 ~ ~-6 yellow_concrete
setblock ~2 ~ ~6 yellow_concrete
setblock ~6 ~ ~-2 yellow_concrete
setblock ~6 ~ ~2 yellow_concrete

setblock ~-1 ~ ~-1 green_concrete
setblock ~-1 ~ ~1 green_concrete
setblock ~1 ~ ~-1 green_concrete
setblock ~1 ~ ~1 green_concrete

setblock ~-5 ~ ~-1 green_concrete
setblock ~-5 ~ ~1 green_concrete
setblock ~-4 ~ ~ green_concrete

setblock ~-1 ~ ~-5 green_concrete
setblock ~ ~ ~-4 green_concrete
setblock ~1 ~ ~-5 green_concrete

setblock ~-1 ~ ~5 green_concrete
setblock ~ ~ ~4 green_concrete
setblock ~1 ~ ~5 green_concrete

setblock ~5 ~ ~-1 green_concrete
setblock ~5 ~ ~1 green_concrete
setblock ~4 ~ ~ green_concrete

setblock ~-7 ~ ~-4 green_concrete
setblock ~-7 ~ ~4 green_concrete
setblock ~7 ~ ~-4 green_concrete
setblock ~7 ~ ~4 green_concrete
setblock ~-4 ~ ~-7 green_concrete
setblock ~4 ~ ~-7 green_concrete
setblock ~-4 ~ ~7 green_concrete
setblock ~4 ~ ~7 green_concrete

tag @s add polyform.table
tag @s remove polyform.place_table