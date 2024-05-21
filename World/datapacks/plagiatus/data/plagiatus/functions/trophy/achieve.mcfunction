$execute if score #$(type) plag.trophy matches $(value).. run return 0

$scoreboard players set #$(type) plag.trophy $(value)
$item replace entity @e[tag=plag.trophy.$(type),type=item_frame] container.0 with $(item)