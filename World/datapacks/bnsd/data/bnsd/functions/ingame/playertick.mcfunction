## as / at player during game

## health
execute if predicate bnsd:waterlogged run scoreboard players add @s bnsd.watertime 1
execute unless predicate bnsd:waterlogged run scoreboard players set @s bnsd.watertime 0
execute if score @s bnsd.watertime matches 20.. run scoreboard players remove @s bnsd.hearts 1
execute if score @s bnsd.watertime matches 20.. run playsound minecraft:entity.player.big_fall master @s ~ ~ ~ 1 0
execute if score @s bnsd.watertime matches 20.. run particle minecraft:effect ~ ~ ~ 0 0 0 1 10 normal @a
execute if score @s bnsd.watertime matches 20.. run scoreboard players set @s bnsd.watertime 0
execute if score @s bnsd.hearts matches 0 run function bnsd:ingame/die

## display hearts


execute if score @s bnsd.hearts matches 3 run title @s actionbar ["",{"text":"☠☠☠","color":"green"},{"text":"  "},{"score":{"name":".record.min","objective":"bnsd.recordtime"}},{"text":":","color":"gold"},{"score":{"name":".record.sec","objective":"bnsd.recordtime"}},{"text":":","color":"gold"},{"score":{"name":".record.ms","objective":"bnsd.recordtime"}}]
execute if score @s bnsd.hearts matches 2 run title @s actionbar ["",{"text":"☠☠","color":"green"},{"text":"☠","color":"gray"},{"text":"  "},{"score":{"name":".record.min","objective":"bnsd.recordtime"}},{"text":":","color":"gold"},{"score":{"name":".record.sec","objective":"bnsd.recordtime"}},{"text":":","color":"gold"},{"score":{"name":".record.ms","objective":"bnsd.recordtime"}}]
execute if score @s bnsd.hearts matches 1 run title @s actionbar ["",{"text":"☠","color":"green"},{"text":"☠☠","color":"gray"},{"text":"  "},{"score":{"name":".record.min","objective":"bnsd.recordtime"}},{"text":":","color":"gold"},{"score":{"name":".record.sec","objective":"bnsd.recordtime"}},{"text":":","color":"gold"},{"score":{"name":".record.ms","objective":"bnsd.recordtime"}}]
execute if score @s bnsd.hearts matches 0 run title @s actionbar ["",{"text":"☠☠☠","color":"gray"},{"text":"  "},{"score":{"name":".record.min","objective":"bnsd.recordtime"}},{"text":":","color":"gold"},{"score":{"name":".record.sec","objective":"bnsd.recordtime"}},{"text":":","color":"gold"},{"score":{"name":".record.ms","objective":"bnsd.recordtime"}}]
