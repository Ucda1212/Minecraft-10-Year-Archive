execute if entity @a[gamemode=adventure,tag=boom.playing] unless score $active boom matches 1 run function boom:start

execute unless entity @a[gamemode=adventure,tag=boom.playing] if score $active boom matches 1 positioned 286 106 124 run function boom:end

execute if score $active boom matches 1 run function boom:active