$tag @s add $(id)
advancement grant @s only fingermaps:fc/feed_1
execute as @s[tag=fm.1,tag=fm.2,tag=fm.3,tag=fm.4,tag=fm.5,tag=fm.6,tag=fm.7] run advancement grant @s only fingermaps:fc/feed_all
playsound minecraft:entity.player.burp hostile @s ~ ~ ~
kill @e[type=item,distance=..2,nbt={Item:{id:"minecraft:allium"}}]