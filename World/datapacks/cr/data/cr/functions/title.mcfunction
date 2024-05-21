scoreboard players add $title cr 2
execute if score $title cr matches 30.. run scoreboard players set $title cr 1
scoreboard players operation $color cr = $title cr
scoreboard players operation $color cr %= $15 cr
execute if score $title cr matches 15.. run scoreboard players operation $sub cr = $color cr
execute if score $title cr matches 15.. run scoreboard players operation $color cr = $15 cr
execute if score $title cr matches 15.. run scoreboard players operation $color cr -= $sub cr
execute if score $color cr matches 1 run team modify cr prefix ["",{"text":"ӏ","bold":true,"color":"white"},{"text":"𝐂","bold":true,"color":"#54fcfc"},{"text":"𝐑","bold":true,"color":"#00a8a8"},{"text":"ӏ","bold":true,"color":"white"},{"text":" "}]
execute if score $color cr matches 3 run team modify cr prefix ["",{"text":"ӏ","bold":true,"color":"white"},{"text":"𝐂","bold":true,"color":"#4bf0f0"},{"text":"𝐑","bold":true,"color":"#15b4b4"},{"text":"ӏ","bold":true,"color":"white"},{"text":" "}]
execute if score $color cr matches 5 run team modify cr prefix ["",{"text":"ӏ","bold":true,"color":"white"},{"text":"𝐂","bold":true,"color":"#42e3e3"},{"text":"𝐑","bold":true,"color":"#23bfbf"},{"text":"ӏ","bold":true,"color":"white"},{"text":" "}]
execute if score $color cr matches 7 run team modify cr prefix ["",{"text":"ӏ","bold":true,"color":"white"},{"text":"𝐂","bold":true,"color":"#38d7d7"},{"text":"𝐑","bold":true,"color":"#2ecbcb"},{"text":"ӏ","bold":true,"color":"white"},{"text":" "}]
execute if score $color cr matches 9 run team modify cr prefix ["",{"text":"ӏ","bold":true,"color":"white"},{"text":"𝐂","bold":true,"color":"#2ecbcb"},{"text":"𝐑","bold":true,"color":"#38d7d7"},{"text":"ӏ","bold":true,"color":"white"},{"text":" "}]
execute if score $color cr matches 11 run team modify cr prefix ["",{"text":"ӏ","bold":true,"color":"white"},{"text":"𝐂","bold":true,"color":"#23bfbf"},{"text":"𝐑","bold":true,"color":"#42e3e3"},{"text":"ӏ","bold":true,"color":"white"},{"text":" "}]
execute if score $color cr matches 13 run team modify cr prefix ["",{"text":"ӏ","bold":true,"color":"white"},{"text":"𝐂","bold":true,"color":"#15b4b4"},{"text":"𝐑","bold":true,"color":"#4bf0f0"},{"text":"ӏ","bold":true,"color":"white"},{"text":" "}]
execute if score $color cr matches 15 run team modify cr prefix ["",{"text":"ӏ","bold":true,"color":"white"},{"text":"𝐂","bold":true,"color":"#00a8a8"},{"text":"𝐑","bold":true,"color":"#54fcfc"},{"text":"ӏ","bold":true,"color":"white"},{"text":" "}]
execute if score $color cr matches 15 as @a[tag=!cr_verify] run function cr:verify