# sort scores
function utils:sort/search {type: "storage", target: "plag:elytra", targetPath: "scores", attribute: ".score"}
function utils:sort/reverse {type: "storage", target: "plag:elytra", targetPath: "scores"}

scoreboard players set #counter plag.tmp 1
scoreboard players set #max plag.tmp 10

execute store result score #amt_elements plag.tmp run data get storage plag:elytra scores
scoreboard players operation #max plag.tmp < #amt_elements plag.tmp

data merge storage plag:elytra {tmp: {text: []}}
data modify storage plag:elytra tmp.scores set from storage plag:elytra scores

function plagiatus:elytra/highscore/update_display_recursive
#function plagiatus:elytra/highscore/update_final_text with storage plag:elytra tmp

#data modify entity @e[tag=plag.elytra.highscore,type=text_display,limit=1] text set from storage plag:elytra tmp.text