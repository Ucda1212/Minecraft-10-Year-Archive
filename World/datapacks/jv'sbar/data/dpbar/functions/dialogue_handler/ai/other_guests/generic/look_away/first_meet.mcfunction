

$execute if score @s dpbar.look_timer_1 = dialogue_2_1 dpbar.global run function dpbar:dialogue_handler/text/other_guests/$(generic_path)/look_away/first_meet/happy {name: "$(name)",generic_name : "$(generic_name)", generic_path : "$(generic_path)", color : "$(color)"}


$execute as @e[tag=dpbar.tmp2] run function dpbar:dialogue_handler/ai/other_guests/add_memory {name: "$(name)"}
