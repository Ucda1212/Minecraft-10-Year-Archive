scoreboard objectives add dpbar.global dummy
scoreboard objectives add dpbar.tmp dummy
scoreboard objectives add dpbar.id dummy
scoreboard objectives add dpbar.bool dummy
scoreboard objectives add dpbar.rng dummy
scoreboard objectives add dpbar.const dummy


scoreboard objectives add dpbar.look_timer_1 dummy
scoreboard objectives add dpbar.annoyance_timer dummy
scoreboard objectives add dpbar.last_left dummy
scoreboard objectives add dpbar.last_entered dummy
scoreboard objectives add dpbar.last_annoyance dummy
scoreboard objectives add dpbar.times_annoyed dummy
scoreboard objectives add dpbar.times_visited dummy
scoreboard objectives add dpbar.yaw dummy
scoreboard objectives add dpbar.pitch dummy
scoreboard objectives add dpbar.trophy dummy





execute store result score seed dpbar.rng run time query gametime

        #dpbar.consts
            scoreboard players set 1103515245 dpbar.const 1103515245
            scoreboard players set 32768 dpbar.const 32768
            scoreboard players set 12345 dpbar.const 12345
            scoreboard players set 10000 dpbar.const 10000
            scoreboard players set 1000 dpbar.const 1000
            scoreboard players set 100 dpbar.const 100
            scoreboard players set 80 dpbar.const 80
            scoreboard players set 60 dpbar.const 60
            scoreboard players set 30 dpbar.const 30
            scoreboard players set 20 dpbar.const 20
            scoreboard players set 10 dpbar.const 10
            scoreboard players set 6 dpbar.const 6
            scoreboard players set 5 dpbar.const 5
            scoreboard players set 4 dpbar.const 4
            scoreboard players set 3 dpbar.const 3
            scoreboard players set 2 dpbar.const 2
            scoreboard players set 1 dpbar.const 1
            scoreboard players set -1 dpbar.const -1

        #global
            scoreboard players set max_annoyance dpbar.global 10
            scoreboard players set min_stay dpbar.global 10
            scoreboard players set max_stay dpbar.global 60
            scoreboard players set memory_1 dpbar.global 60
            scoreboard players set memory_2 dpbar.global 120
            scoreboard players set memory_3 dpbar.global 180
            scoreboard players set memory_4 dpbar.global 240
            scoreboard players set annoyance_timer dpbar.global 400
            scoreboard players set trophy_condition dpbar.global 20
        #dialogues
            scoreboard players set dialogue_2_1 dpbar.global 20
            scoreboard players set dialogue_1_1 dpbar.global 40
            scoreboard players set dialogue_1_2 dpbar.global 80
            scoreboard players set dialogue_1_3 dpbar.global 180
            scoreboard players set dialogue_1_4 dpbar.global 190
            scoreboard players set dialogue_1_5 dpbar.global 200


schedule function dpbar:music 1t replace
forceload add 321 368