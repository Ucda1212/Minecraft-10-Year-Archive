

$execute if entity @s[tag=$(name)] as @a[tag=dpbar.tmp] run function dpbar:dialogue_handler/ai/other_guests/generic/look_away/next_meet {name: "$(name)", generic_name : "$(generic_name)", generic_path : "$(generic_path)", color : "$(color)"}
$execute if entity @s[tag=!$(name)] as @a[tag=dpbar.tmp] run function dpbar:dialogue_handler/ai/other_guests/generic/look_away/first_meet {name: "$(name)", generic_name : "$(generic_name)", generic_path : "$(generic_path)", color : "$(color)"}
