# Run as the player you want to reset progress for with {Type:"all" or "hunt",Hunt:""} (Hunt is the hunt ID, isn't used with Type:"all")

## Store
$data modify storage qhunt:var PlayerData.Temp.Hunt set value $(Hunt)
function qhunt:fill_temp_player_data

## Reset
$function qhunt:collectible/reset/$(Type) with storage qhunt:var PlayerData.Temp