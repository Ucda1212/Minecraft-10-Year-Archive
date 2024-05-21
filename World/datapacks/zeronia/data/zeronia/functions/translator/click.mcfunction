#> Cycle to next translator
scoreboard players add .page zeronia.translator_page 1
execute if score .page zeronia.translator_page >= .max zeronia.translator_page run scoreboard players set .page zeronia.translator_page 0

#> Particle/sound
particle end_rod 92 69 13 0.2 0.2 0.2 0.1 10 normal @a
playsound minecraft:block.end_portal_frame.fill master @a 92 69 13 1 1.8
playsound minecraft:item.book.page_turn master @a 92 69 13 1 1.8

#> Update text
execute as fdc1d27a-fdb2-4bbc-b997-2f235e7b6cb9 run function zeronia:translator/hello

#> Update player head
data merge entity ebf24536-d593-450c-b006-b4d0bce839cd {start_interpolation:0,interpolation_duration:2,transformation:{scale:[1.05f,1.05f,1.05f],translation:[0f,0.3f,0f]}}
execute as ebf24536-d593-450c-b006-b4d0bce839cd run function zeronia:translator/head
schedule function zeronia:translator/lower 2

#> Revoke advancement
advancement revoke @s only zeronia:translator/clickglobe

advancement grant @s only zeronia:rewards/translator