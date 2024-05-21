# execute unless entity @s[distance=..10] run return fail
tag @s add dpbar.tmp2


# tellraw just_Vlad [{"selector":"@s"},{"text":" test"}]


$execute if entity @s[name="MonsterIJust"] run function dpbar:dialogue_handler/ai/other_guests/monsterijust/look_away {name: "$(name)",generic_name : "MonsterIJust", generic_path : "monsterijust", resident_id: 1, color: "dark_gray"}

$execute if entity @s[name="Just_Vlad"] run function dpbar:dialogue_handler/ai/other_guests/generic/look_away {name: "$(name)",generic_name : "Just_Vlad", generic_path : "jv", resident_id: 2, color: "light_purple"}
$execute if entity @s[name="Sirboys"] run function dpbar:dialogue_handler/ai/other_guests/generic/look_away {name: "$(name)",generic_name : "Sirboys", generic_path : "sirboys", resident_id: 3, color: "gray"}
$execute if entity @s[name="_Juski_"] run function dpbar:dialogue_handler/ai/other_guests/generic/look_away {name: "$(name)",generic_name : "_Juski_", generic_path : "juski", resident_id: 4, color: "gray"}
$execute if entity @s[name="Helkor"] run function dpbar:dialogue_handler/ai/other_guests/generic/look_away {name: "$(name)",generic_name : "Helkor", generic_path : "helkor", resident_id: 5, color: "gray"}
$execute if entity @s[name="Kragast"] run function dpbar:dialogue_handler/ai/other_guests/generic/look_away {name: "$(name)",generic_name : "Kragast", generic_path : "kragast", resident_id: 6, color: "gray"}
$execute if entity @s[name="Menae"] run function dpbar:dialogue_handler/ai/other_guests/generic/look_away {name: "$(name)",generic_name : "Menae", generic_path : "menae", resident_id: 7, color: "gray"}
$execute if entity @s[name="efret999"] run function dpbar:dialogue_handler/ai/other_guests/generic/look_away {name: "$(name)",generic_name : "efret999", generic_path : "efret", resident_id: 8, color: "gray"}
$execute if entity @s[name="Lupik29"] run function dpbar:dialogue_handler/ai/other_guests/generic/look_away {name: "$(name)",generic_name : "Lupik29", generic_path : "lupik", resident_id: 9, color: "gray"}
$execute if entity @s[name="3a_MoHolNT"] run function dpbar:dialogue_handler/ai/other_guests/generic/look_away {name: "$(name)",generic_name : "3a_MoHolNT", generic_path : "monolit", resident_id: 10, color: "gray"}
$execute if entity @s[name="B0TIK"] run function dpbar:dialogue_handler/ai/other_guests/generic/look_away {name: "$(name)",generic_name : "B0TIK", generic_path : "botik", resident_id: 11, color: "gray"}
$execute if entity @s[name="Felix14_v2"] run function dpbar:dialogue_handler/ai/other_guests/generic/look_away {name: "$(name)",generic_name : "Felix14_v2", generic_path : "felix", resident_id: 12, color: "gray"}
$execute if entity @s[name="MrTikva"] run function dpbar:dialogue_handler/ai/other_guests/generic/look_away {name: "$(name)",generic_name : "MrTikva", generic_path : "tikva", resident_id: 13, color: "gray"}
$execute if entity @s[name="MrHixu"] run function dpbar:dialogue_handler/ai/other_guests/generic/look_away {name: "$(name)",generic_name : "MrHixu", generic_path : "hixu", resident_id: 14, color: "gray"}
$execute if entity @s[name="Karasb"] run function dpbar:dialogue_handler/ai/other_guests/generic/look_away {name: "$(name)",generic_name : "Karasb", generic_path : "karas", resident_id: 15, color: "gray"}
$execute if entity @s[name="BrandShei"] run function dpbar:dialogue_handler/ai/other_guests/generic/look_away {name: "$(name)",generic_name : "BrandShei", generic_path : "brandshei", resident_id: 16, color: "gray"}
$execute if entity @s[name="MoKotik"] run function dpbar:dialogue_handler/ai/other_guests/generic/look_away {name: "$(name)",generic_name : "MoKotik", generic_path : "mokotik", resident_id: 17, color: "gray"}
$execute if entity @s[name="Laifada"] run function dpbar:dialogue_handler/ai/other_guests/generic/look_away {name: "$(name)",generic_name : "Laifada", generic_path : "laifada", resident_id: 18, color: "gray"}
$execute if entity @s[name="Cybereggs1337"] run function dpbar:dialogue_handler/ai/other_guests/generic/look_away {name: "$(name)",generic_name : "Cybereggs1337", generic_path : "cyber", resident_id: 19, color: "gray"}
$execute if entity @s[name="Vazno"] run function dpbar:dialogue_handler/ai/other_guests/generic/look_away {name: "$(name)",generic_name : "Vazno", generic_path : "vazno", resident_id: 20, color: "gray"}



tag @s remove dpbar.tmp2
tag @s remove dpbar.tmp3

tag @s remove dpbar.result

# tag @s remove dpbar.found
