scoreboard players set @s plag.elytra.timer 0
scoreboard players set @s plag.elytra.stop_timer 0
scoreboard players set @s plag.elytra.checkpoint 1
tag @s add plag.elytra.playing

gamemode adventure @s[gamemode=!adventure]

item replace entity @s[nbt=!{Inventory:[{id:"minecraft:elytra"}]}] armor.chest with elytra[minecraft:unbreakable={}]