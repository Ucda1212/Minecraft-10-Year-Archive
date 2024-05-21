function qhunt:fill_temp_player_data
data modify storage qhunt:var PlayerData.Temp.Hunt set value "poppy"
execute store result storage qhunt:var PlayerData.Temp.IsCompleted int 1 run function qhunt:hunt/is_completed with storage qhunt:var PlayerData.Temp
execute if data storage qhunt:var {PlayerData:{Temp:{IsCompleted:1}}} run function qhunt:poppy/success_enter_secret
execute if data storage qhunt:var {PlayerData:{Temp:{IsCompleted:0}}} run function qhunt:poppy/fail_enter_secret