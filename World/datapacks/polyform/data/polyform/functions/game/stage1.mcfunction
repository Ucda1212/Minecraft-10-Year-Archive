# executes as player

# triggers bundle click
execute as @s[scores={polyform.bundle=1..}] at @s anchored eyes positioned ^ ^ ^ positioned ~ ~-0.3 ~ run function polyform:game/process_letters1

# triggers letter pickup
execute unless score @s polyform.score matches 0..2147483647 if data entity @s Inventory[{components:{"minecraft:custom_data":{define_move:true}}}].components.minecraft:custom_data.letter run function polyform:game/write_letter_number
