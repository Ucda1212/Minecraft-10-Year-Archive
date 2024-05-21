
$execute if entity @s[tag=$(name)] as @a[tag=dpbar.tmp] run function dpbar:dialogue_handler/ai/other_guests/monsterijust/look/bad {name: "$(name)", generic_name : "$(generic_name)", generic_path : "$(generic_path)", color : "$(color)"}
$execute if entity @s[tag=!$(name)] as @a[tag=dpbar.tmp] run function dpbar:dialogue_handler/ai/other_guests/monsterijust/look/good {name: "$(name)", generic_name : "$(generic_name)", generic_path : "$(generic_path)", color : "$(color)"}
