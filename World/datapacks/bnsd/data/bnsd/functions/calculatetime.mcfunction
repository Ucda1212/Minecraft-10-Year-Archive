scoreboard players operation .record.ms bnsd.recordtime = .time bnsd.main
scoreboard players operation .record.sec bnsd.recordtime = .time bnsd.main
scoreboard players operation .record.min bnsd.recordtime = .time bnsd.main

scoreboard players operation .record.ms bnsd.recordtime %= .20 bnsd.main
scoreboard players operation .record.ms bnsd.recordtime *= .5 bnsd.main

scoreboard players operation .record.sec bnsd.recordtime /= .20 bnsd.main
scoreboard players operation .record.sec bnsd.recordtime %= .60 bnsd.main

scoreboard players operation .record.min bnsd.recordtime /= .1200 bnsd.main