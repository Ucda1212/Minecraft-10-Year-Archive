execute align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["plag.elytra.checkpoint", "plag.elytra.y", "plag.new"]}

execute as @e[tag=plag.new] run function plagiatus:elytra/marker/setup

tag @e remove plag.new