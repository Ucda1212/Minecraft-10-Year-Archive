# This is run as a player with the data from a collectible interaction marker

## Store
$data merge storage qhunt:var {PlayerData:{Temp:{Hunt:"$(Hunt)",ID:"$(ID)",TextInfo:$(TextInfo)}}}
$data modify storage qhunt:var PlayerData.Temp.Name set from storage qhunt:var Names.$(Hunt).$(ID)
$execute store result storage qhunt:var PlayerData.Temp.HuntTotal int 1 run data get storage qhunt:var Hunts.$(Hunt)
function qhunt:fill_temp_player_data

## Check if collected
execute store result storage qhunt:var PlayerData.Temp.IsCollected int 1 run function qhunt:collectible/collect/is_collected with storage qhunt:var PlayerData.Temp
execute if data storage qhunt:var {PlayerData:{Temp:{IsCollected:1}}} run function qhunt:collectible/collect/fail with storage qhunt:var PlayerData.Temp
execute if data storage qhunt:var {PlayerData:{Temp:{IsCollected:1}}} run return fail

## Collect
function qhunt:collectible/collect/succeed with storage qhunt:var PlayerData.Temp

## Check if all collected
execute if function qhunt:hunt/is_completed run return fail
execute store result storage qhunt:var PlayerData.Temp.PlayerTotal int 1 run function qhunt:hunt/get_collected with storage qhunt:var PlayerData.Temp
execute store result storage qhunt:var PlayerData.Temp.NewCompleted int 1 run function qhunt:hunt/check_completed with storage qhunt:var PlayerData.Temp
execute if data storage qhunt:var {PlayerData:{Temp:{NewCompleted:1}}} run function qhunt:hunt/complete/run with storage qhunt:var PlayerData.Temp