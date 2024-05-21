scoreboard objectives add zeronia.translator_page dummy
scoreboard players add .page zeronia.translator_page 0
scoreboard players set .max zeronia.translator_page 10

scoreboard objectives add zeronia.throw_snowball minecraft.used:minecraft.snowball

scoreboard objectives add zeronia.step_plate dummy
scoreboard players add .cur zeronia.step_plate 0
scoreboard players set .max zeronia.step_plate 14

scoreboard objectives add zeronia.splash dummy
scoreboard players add .splash zeronia.splash 0
scoreboard players set .max zeronia.splash 18
function zeronia:splashtext/up

scoreboard objectives add zeronia.rollingcredits dummy
scoreboard players set .credits zeronia.rollingcredits 0
scoreboard players set .min zeronia.rollingcredits 0
scoreboard players set .max zeronia.rollingcredits 500
function zeronia:credits/stop

function zeronia:realmscape/pickup

scoreboard objectives add zeronia.bellRang minecraft.custom:minecraft.bell_ring
scoreboard objectives add zeronia.boatCooldown dummy
scoreboard players set .min zeronia.boatCooldown 0

scoreboard objectives add equip trigger
scoreboard objectives add lobbybook trigger

scoreboard objectives add zeronia.accidenttimer dummy

scoreboard objectives add zeronia.rewards dummy