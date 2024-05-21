kill @e[tag=plag.elytra.highscore]
kill @e[tag=plag.elytra.text]

summon text_display 2 102 57 {text:'{"text": "10. <empty>"}', background:0,Tags:[plag.elytra.highscore, plag.elytra.highscore.10], width: 5, height: 1}
summon text_display 2 102.25 57 {text:'{"text": "9. <empty>"}', background:0,Tags:[plag.elytra.highscore, plag.elytra.highscore.9], width: 5, height: 1}
summon text_display 2 102.5 57 {text:'{"text": "8. <empty>"}', background:0,Tags:[plag.elytra.highscore, plag.elytra.highscore.8], width: 5, height: 1}
summon text_display 2 102.75 57 {text:'{"text": "7. <empty>"}', background:0,Tags:[plag.elytra.highscore, plag.elytra.highscore.7], width: 5, height: 1}
summon text_display 2 103.0 57 {text:'{"text": "6. <empty>"}', background:0,Tags:[plag.elytra.highscore, plag.elytra.highscore.6], width: 5, height: 1}
summon text_display 2 103.25 57 {text:'{"text": "5. <empty>"}', background:0,Tags:[plag.elytra.highscore, plag.elytra.highscore.5], width: 5, height: 1}
summon text_display 2 103.5 57 {text:'{"text": "4. <empty>"}', background:0,Tags:[plag.elytra.highscore, plag.elytra.highscore.4], width: 5, height: 1}
summon text_display 2 104.0 57 {text:'{"text": "3. <empty>"}', background:0,Tags:[plag.elytra.highscore, plag.elytra.highscore.3], width: 5, height: 1}
summon text_display 2 104.5 57 {text:'{"text": "2. <empty>"}', background:0,Tags:[plag.elytra.highscore, plag.elytra.highscore.2], width: 5, height: 1, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.1f, 1.1f, 1.1f]}}
summon text_display 2 105.0 57 {text:'{"text": "1. <empty>"}', background:0,Tags:[plag.elytra.highscore, plag.elytra.highscore.1], width: 5, height: 1, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.25f, 1.25f, 1.25f]}}

execute as @e[tag=plag.elytra.highscore] at @s run tp @s ~ ~ ~ 90 ~

function plagiatus:elytra/highscore/update_display


summon text_display -2.5 103.6 59.5 {text:'{"text": "Elytra Flight" ,"color":"aqua"}',background:-16777216,Tags:["plag.elytra.text", "plag.elytra.text.rotate"], transformation: {left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.0f, 1.0f, 1.0f]},width: 3, height: 1}
summon text_display -2.5 101.5 59.5 {text:'[{"text": "Take a scenic "},{"text": "flight\\n", "color": "aqua"},{"text": " across the map with a\\ntrusty elytra.\\n\\n Fly through all "},{"text":"42 rings \\n","color": "yellow"},{"text":" in order to claim a spot\\non the "},{"text":"leaderboard", "color":"gold"}, ".\\n\\nSwitch to creative mode\\nto practice."]',background:-16777216,Tags:["plag.elytra.text", "plag.elytra.text.rotate"], transformation: {left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [0.7f, 0.7f, 0.7f]},line_width:135,width: 3, height: 3}
execute as @e[tag=plag.elytra.text.rotate] at @s run tp @s ~ ~ ~ 45 ~

summon text_display -1 103.0 60.95 {text:'{"text": "START\\n⬇"}', background:0,Tags:[plag.elytra.text], transformation: {left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], translation: [0.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [2.5f, 2.5f, 2.5f]}, width: 3, height: 2}