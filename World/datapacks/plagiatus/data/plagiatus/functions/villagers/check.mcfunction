$execute unless entity @s[tag=plag.villager.$(i)] run return 0
$execute if entity @s[tag=plag.villager.$(i)] as @p[tag=utils.interact.c,advancements={plagiatus:villager/v$(i)=true}] run return 0


$advancement grant @p[tag=utils.interact.c] only plagiatus:villager/v$(i)
# advancement grant @p[tag=utils.interact.c] only plagiatus:villager/one
# tag @p[tag=utils.interact.c] add plag.villager.remove_adv
# scoreboard players set @p[tag=utils.interact.c] plag.villager.timer 0
tellraw @p[tag=utils.interact.c] [{"text": "You found a villager statue!", "color": "green"}]

return 1