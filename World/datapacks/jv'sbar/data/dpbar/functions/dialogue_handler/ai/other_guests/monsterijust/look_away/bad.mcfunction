$execute if score @s dpbar.look_timer_1 > dialogue_1_2 dpbar.global if score @s dpbar.look_timer_1 < dialogue_1_3 dpbar.global run function dpbar:dialogue_handler/text/other_guests/monsterijust/look_away/sad {name: "$(name)", generic_name : "$(generic_name)", generic_path : "$(generic_path)", color : "$(color)"}
$execute if score @s dpbar.look_timer_1 = dialogue_1_5 dpbar.global run function dpbar:dialogue_handler/text/other_guests/monsterijust/look_away/annoyed {name: "$(name)", generic_name : "$(generic_name)", generic_path : "$(generic_path)", color : "$(color)"}

