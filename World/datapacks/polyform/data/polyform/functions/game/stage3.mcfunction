# as player

# at least I tried ._. (can be heavily optimized by calling from place/remove_letter, but I couldn't solve the ordering issue)
#execute as @e[type=item_display, tag=polyform.idling] if score @s polyform.identifier = Temp. polyform.identifier run function polyform:game/move/direction_detector
#nvm I optimized it

execute as @s[scores={polyform.next=1..}] run function polyform:game/move/write
execute as @s[scores={polyform.bundle=1..}] at @s anchored eyes positioned ^ ^ ^ positioned ~ ~-0.3 ~ run function polyform:game/move/end

#clear
execute as @e[type=interaction, tag=polyform.dynamic] at @s positioned ~0.25 ~ ~ unless entity @e[type=item_display, distance=..1.1, tag=polyform.idling] unless entity @e[type=item_display, distance=..1.1, tag=polyform.external] run kill @s
