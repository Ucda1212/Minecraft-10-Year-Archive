$advancement grant @a[tag=dpbar.tmp] only dpbar:local_celebrity resident_$(resident_id)

$execute if entity @s[tag=$(name)] as @a[tag=dpbar.tmp] run function dpbar:dialogue_handler/ai/other_guests/generic/look/next_meet {name: "$(name)",generic_name : "$(generic_name)", generic_path : "$(generic_path)", color : "$(color)"}
$execute if entity @s[tag=!$(name)] as @a[tag=dpbar.tmp] run function dpbar:dialogue_handler/ai/other_guests/generic/look/first_meet {name: "$(name)",generic_name : "$(generic_name)", generic_path : "$(generic_path)", color : "$(color)"}
