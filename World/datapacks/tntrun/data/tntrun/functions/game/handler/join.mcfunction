#> tntrun:game/handler/join

# Handle arena join
tp @s[tag=tr.joined,tag=!ingame] 55.0 -10 -99.0
playsound minecraft:music_disc.otherside ambient @s[tag=tr.joined,tag=!ingame] ~ ~ ~ 300 1
tag @s[tag=tr.joined,tag=!tr.winner] add tr.ingame

execute as @s[tag=tr.ingame] run item replace entity @s armor.feet with netherite_boots[custom_name='{"bold":true,"color":"aqua","text":"Runners boots"}',unbreakable={show_in_tooltip:false},hide_tooltip={},rarity="epic",enchantments={levels:{"minecraft:feather_falling":4},show_in_tooltip:false},enchantment_glint_override=true,attribute_modifiers={modifiers:[{type:"generic.safe_fall_distance",name:"generic.safe_fall_distance",amount:20,operation:"add_value",uuid:[I;1124753620,-1671544179,-1544437855,1271958104]},{type:"generic.knockback_resistance",name:"generic.knockback_resistance",amount:20,operation:"add_value",uuid:[I;1186897871,1485261574,-1121452892,610920462]}],show_in_tooltip:false},hide_additional_tooltip={},trim={material:"minecraft:diamond",pattern:"minecraft:rib",show_in_tooltip:false}]