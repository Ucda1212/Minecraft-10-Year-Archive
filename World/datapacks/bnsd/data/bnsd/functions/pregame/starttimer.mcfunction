
execute if score .starttimer bnsd.main matches ..1 run function bnsd:ingame/start


execute if score .starttimer bnsd.main matches 2..4 run playsound minecraft:block.note_block.bass master @a[tag=bnsd.player] -356 52 -209 1 1
execute if score .starttimer bnsd.main matches 1 run playsound minecraft:block.note_block.bass master @a[tag=bnsd.player] -356 52 -209 1 2

execute unless score .players bnsd.main matches 0 unless score .starttimer bnsd.main matches 0 run scoreboard players remove .starttimer bnsd.main 1

## update text display
data merge entity @e[type=text_display,limit=1,sort=nearest,tag=bnsd.start] {text:'[{"text":"Starting in: "},{"color":"gold","score":{"name":".starttimer","objective":"bnsd.main"}},{"text":"s"}]'}

execute unless score .gamestate bnsd.main matches 1 unless score .players bnsd.main matches 0 run schedule function bnsd:pregame/starttimer 1s

