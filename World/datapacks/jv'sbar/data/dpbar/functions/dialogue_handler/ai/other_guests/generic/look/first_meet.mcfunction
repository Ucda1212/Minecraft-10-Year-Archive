

$execute if score @s dpbar.look_timer_1 = dialogue_2_1 dpbar.global run function dpbar:dialogue_handler/text/other_guests/$(generic_path)/look/first_meet/happy {name: "$(name)",generic_name : "$(generic_name)", generic_path : "$(generic_path)", color : "$(color)"}

execute if score @s dpbar.look_timer_1 > dialogue_2_1 dpbar.global run scoreboard players operation @s dpbar.look_timer_1 = dialogue_2_1 dpbar.global


