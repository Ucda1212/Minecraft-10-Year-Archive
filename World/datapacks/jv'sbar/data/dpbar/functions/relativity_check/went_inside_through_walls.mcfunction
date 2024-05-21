

# execute if entity @s[tag=dpbar.standing_in_the_doorway] run tellraw @s {"text":"Hello bypasser!"}

function dpbar:dialogue_handler/triggers/went_inside_through_walls

tag @s remove dpbar.standing_in_the_doorway
tag @s add dpbar.inside
