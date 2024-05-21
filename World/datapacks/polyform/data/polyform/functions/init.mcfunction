#function polyform:reset
# Init

scoreboard objectives add polyform.initialized dummy
scoreboard objectives add polyform.joined minecraft.custom:minecraft.leave_game
scoreboard objectives add polyform.give_game trigger
scoreboard objectives add polyform.next trigger
scoreboard objectives add polyform.placing dummy
scoreboard objectives add polyform.ready dummy
scoreboard objectives add polyform.countdown dummy
scoreboard objectives add polyform.identifier dummy
scoreboard objectives add polyform.length dummy
scoreboard objectives add polyform.heigh dummy
scoreboard objectives add polyform.move dummy
scoreboard objectives add polyform.stage dummy
scoreboard objectives add polyform.order dummy
scoreboard objectives add polyform.score_previous dummy
scoreboard objectives add polyform.score dummy
scoreboard players set 2. polyform.score 2
scoreboard players set 3. polyform.score 3
scoreboard objectives add polyform.total_players dummy
scoreboard objectives add polyform.current_players dummy
scoreboard objectives add polyform.bundle minecraft.used:minecraft.bundle

# Initialized
scoreboard players set polyform. polyform.initialized 1