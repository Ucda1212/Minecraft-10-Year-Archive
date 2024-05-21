scoreboard objectives add eroxen_lom.x dummy
scoreboard objectives add eroxen_lom.y dummy

kill @e[type=marker,tag=eroxen_lom.redstone_block_anchor]
kill @e[type=item_display,tag=eroxen_lom.billboard]

execute positioned -111 81 197 summon marker run function eroxen_lom:internal/spawn_anchor {x:1,y:1}
execute positioned -114 81 201 summon marker run function eroxen_lom:internal/spawn_anchor {x:2,y:1}
execute positioned -123 79 199 summon marker run function eroxen_lom:internal/spawn_anchor {x:3,y:1}
execute positioned -126 79 202 summon marker run function eroxen_lom:internal/spawn_anchor {x:4,y:1}
execute positioned -123 82 214 summon marker run function eroxen_lom:internal/spawn_anchor {x:5,y:1}

execute positioned -102 92 202 summon marker run function eroxen_lom:internal/spawn_anchor {x:1,y:2}
execute positioned -114 88 201 summon marker run function eroxen_lom:internal/spawn_anchor {x:2,y:2}
execute positioned -119 87 203 summon marker run function eroxen_lom:internal/spawn_anchor {x:3,y:2}
execute positioned -119 90 211 summon marker run function eroxen_lom:internal/spawn_anchor {x:4,y:2}
execute positioned -123 90 214 summon marker run function eroxen_lom:internal/spawn_anchor {x:5,y:2}

execute positioned -102 99 202 summon marker run function eroxen_lom:internal/spawn_anchor {x:1,y:3}
execute positioned -106 99 207 summon marker run function eroxen_lom:internal/spawn_anchor {x:2,y:3}
execute positioned -105 101 216 summon marker run function eroxen_lom:internal/spawn_anchor {x:3,y:3}
execute positioned -115 98 215 summon marker run function eroxen_lom:internal/spawn_anchor {x:4,y:3}
execute positioned -117 101 223 summon marker run function eroxen_lom:internal/spawn_anchor {x:5,y:3}

execute positioned -102 106 202 summon marker run function eroxen_lom:internal/spawn_anchor {x:1,y:4}
execute positioned -96 117 214 summon marker run function eroxen_lom:internal/spawn_anchor {x:2,y:4}
execute positioned -101 115 220 summon marker run function eroxen_lom:internal/spawn_anchor {x:3,y:4}
execute positioned -115 106 215 summon marker run function eroxen_lom:internal/spawn_anchor {x:4,y:4}
execute positioned -113 116 230 summon marker run function eroxen_lom:internal/spawn_anchor {x:5,y:4}

execute positioned -100 118 203 summon marker run function eroxen_lom:internal/spawn_anchor {x:1,y:5}
execute positioned -96 129 214 summon marker run function eroxen_lom:internal/spawn_anchor {x:2,y:5}
execute positioned -108 119 213 summon marker run function eroxen_lom:internal/spawn_anchor {x:3,y:5}
execute positioned -113 119 218 summon marker run function eroxen_lom:internal/spawn_anchor {x:4,y:5}
execute positioned -113 127 230 summon marker run function eroxen_lom:internal/spawn_anchor {x:5,y:5}

execute positioned -148 68 176 align xyz positioned ~0.5 ~0.5 ~0.5 summon item_display run function eroxen_lom:internal/spawn_billboard

function eroxen_lom:api/randomise

function eroxen_lom:internal/game/api/stop
schedule function eroxen_lom:internal/clock 5t replace