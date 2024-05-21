advancement grant @s only dpbar:local_celebrity resident_1


$execute if score @s dpbar.look_timer_1 = dialogue_1_1 dpbar.global run function dpbar:dialogue_handler/text/other_guests/monsterijust/look/good/happy {name: "$(name)", generic_name : "$(generic_name)", generic_path : "$(generic_path)", color : "$(color)"}
$execute if score @s dpbar.look_timer_1 = dialogue_1_2 dpbar.global run function dpbar:dialogue_handler/text/other_guests/monsterijust/look/good/sad {name: "$(name)", generic_name : "$(generic_name)", generic_path : "$(generic_path)", color : "$(color)"}
$execute if score @s dpbar.look_timer_1 = dialogue_1_3 dpbar.global run function dpbar:dialogue_handler/text/other_guests/monsterijust/look/good/annoyed {name: "$(name)", generic_name : "$(generic_name)", generic_path : "$(generic_path)", color : "$(color)"}

$execute if score @s dpbar.look_timer_1 = dialogue_1_5 dpbar.global run function dpbar:dialogue_handler/text/bartender/guest/harassment {name: "$(name)", generic_name : "$(generic_name)", generic_path : "$(generic_path)", color : "$(color)"}

execute if score @s dpbar.look_timer_1 > dialogue_1_5 dpbar.global run scoreboard players operation @s dpbar.look_timer_1 = dialogue_1_5 dpbar.global
