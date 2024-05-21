# scoreboard players operation @s dpbar.tmp = @s dpbar.yaw
# execute store result score @s dpbar.yaw run data get entity @s Rotation[0] 10

# # execute if score @s dpbar.yaw matches ..-1 run scoreboard players operation @s dpbar.tmp *= -1 dpbar.const

# execute if score @s dpbar.tmp <= @s dpbar.yaw run scoreboard players set @s dpbar.global -1
# execute if score @s dpbar.tmp = @s dpbar.yaw run scoreboard players set @s dpbar.global 0
# execute unless score @s dpbar.tmp <= @s dpbar.yaw run scoreboard players set @s dpbar.global 1
# title Just_Vlad actionbar {"text":"Поворот: ","extra":[{"score":{"name":"@s","objective":"dpbar.tmp"}},{"text":" "},{"score":{"name":"@s","objective":"dpbar.yaw"}},{"text":" "},{"score":{"name":"@s","objective":"dpbar.global"}}]}
