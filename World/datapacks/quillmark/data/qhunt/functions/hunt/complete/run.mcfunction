$data modify storage qhunt:var PlayerData.$(UUID0)$(UUID1)$(UUID2)$(UUID3).$(Hunt).Completed set value true
$tellraw @s ["",{"text":"[","color":"blue"},{"text":"🐡","color":"yellow"},{"text":"] ","color":"blue"},{"text":"You've completed the $(Hunt) hunt!","color":"gold"}]
execute at @s run playsound minecraft:ui.toast.challenge_complete player @s ~ ~ ~ 1 1
$function qhunt:hunt/complete/$(Hunt)