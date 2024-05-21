$data modify entity @e[tag=plag.elytra.highscore.$(counter),type=text_display,limit=1] text set value '[{"text":"$(counter). ","extra":$(time)}," ",{"text":"$(name)","color":"aqua"}]'

#$data modify storage plag:elytra tmp.text append value '[{"text":"$(counter). ","extra":$(time)}," ",$(name)]'