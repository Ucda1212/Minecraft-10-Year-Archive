# tellraw @a {"text":"\n"}

# execute store result score seed dpbar.rng run time query gametime
# scoreboard players operation calc dpbar.rng *= seed dpbar.rng
scoreboard players operation calc dpbar.rng *= seed dpbar.rng
scoreboard players operation calc dpbar.rng *= 1103515245 dpbar.const
# tellraw @a [{"text":"Шаг 1 ","color":"yellow"},{"score":{"name":"calc","objective":"dpbar.rng"}}]
scoreboard players add calc dpbar.rng 12345
# tellraw @a [{"text":"Шаг 2 ","color":"yellow"},{"score":{"name":"calc","objective":"dpbar.rng"}}]
execute if score calc dpbar.rng matches ..0 run scoreboard players operation calc dpbar.rng *= -1 dpbar.const
# tellraw @a [{"text":"Шаг 3 ","color":"yellow"},{"score":{"name":"calc","objective":"dpbar.rng"}}]
scoreboard players operation calc dpbar.rng /= 32768 dpbar.const
# tellraw @a [{"text":"Шаг 4 ","color":"yellow"},{"score":{"name":"calc","objective":"dpbar.rng"}}]
execute if score calc dpbar.rng matches ..0 run scoreboard players set calc dpbar.rng 0
# tellraw @a [{"text":"Шаг 5 ","color":"yellow"},{"score":{"name":"calc","objective":"dpbar.rng"}}]
scoreboard players operation calc dpbar.rng %= tmp dpbar.rng
# tellraw @a [{"text":"Шаг 6 ","color":"yellow"},{"score":{"name":"calc","objective":"dpbar.rng"}}]

scoreboard players add calc dpbar.rng 1
scoreboard players add seed dpbar.rng 1
# tellraw @a [{"text":"Шаг 7 ","color":"yellow"},{"score":{"name":"calc","objective":"dpbar.rng"}}]


# /summon armor_stand ~ ~-0.5 ~ {Invulnerable:1b,PersistenceRequired:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:4606074}}},{id:"leather_leggings",Count:1b,tag:{display:{color:2441763}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:2171169}}},{id:"player_head",Count:1b,tag:{SkullOwner:"Just_Vlad"}}],HandItems:[{},{id:"glass_bottle",Count:1b}],CustomName:'{"text":"Just_Vlad","color":"light_purple"}',CustomNameVisible:1b,DisabledSlots:4144959,Pose:{Body:[6f,0f,0f],Head:[4f,0f,0f],LeftLeg:[348f,0f,346f],RightLeg:[360f,0f,16f],LeftArm:[336f,0f,337f],RightArm:[307f,19f,0f]}}

# /summon minecraft:armor_stand 322.50 84.00 364.50 {NoGravity: 1b, Brain: {memories: {}}, HurtByTimestamp: 0, Attributes: [{Base: 0.0d, Name: "minecraft:generic.armor"}, {Base: 0.699999988079071d, Name: "minecraft:generic.movement_speed"}, {Base: 0.0d, Name: "minecraft:generic.armor_toughness"}], Invulnerable: 1b, FallFlying: 0b, ShowArms: 1b, PortalCooldown: 0, AbsorptionAmount: 0.0f, FallDistance: 0.0f, DisabledSlots: 4144959, DeathTime: 0s, Pose: {RightArm: [307.0f, 19.0f, 0.0f], LeftLeg: [348.0f, 0.0f, 346.0f], Head: [4.0f, 0.0f, 0.0f], LeftArm: [336.0f, 0.0f, 337.0f], RightLeg: [0.0f, 0.0f, 16.0f], Body: [6.0f, 0.0f, 0.0f]}, Invisible: 0b, Motion: [0.0d, 0.0d, 0.0d], Small: 0b, Health: 20.0f, Air: 300s, OnGround: 0b, Rotation: [0.0f, 0.0f], HandItems: [{}, {id: "minecraft:glass_bottle", Count: 1b}], CustomName: '{"text":"Just_Vlad","color":"light_purple"}', Fire: 0s, ArmorItems: [{id: "minecraft:leather_boots", Count: 1b, tag: {display: {color: 4606074}, Damage: 0}}, {id: "minecraft:leather_leggings", Count: 1b, tag: {display: {color: 2441763}, Damage: 0}}, {id: "minecraft:leather_chestplate", Count: 1b, tag: {display: {color: 2171169}, Damage: 0}}, {id: "minecraft:player_head", Count: 1b, tag: {SkullOwner: {Id: [I; -1533017487, -2075570368, -1368153962, 1132302198], Properties: {textures: [{Signature: "xtkhG/fTU1F2ZJwnapXaECDyFV3tmBfVLVqtM4oR6m/onYyHMLtSuMVZ/iJ/Z1jm6kovzHZHvIcX7rbWt1YvCKtLbylwSL3lPBcrtlWFfXO4Hsi08XjLubd/rD6xL/VxkA007ldiIz+dHb1u8ouHdNAKSf6tb7Mj2WmqrNQxo9bmWNr1C5oyZd0XBJL0uoBbSu1iKGeD/VAyOl4Z2ti28b1BgkONiAefZzqcuDQ88XiriavAu+pPLPM9+oIy/d7Rl2cO5iFAvVeeUhZlZoINth0xKrcvgDbAxNVsImc/ufCWly2xbScDOjkjOOOcAih6FTY56mYfs4k2acJ88EZrTvjieYy/kdYMIqMxYW7d3U3fOYgxJCAU85Am1+lKLtuVvGj1/mh+hoC2/BnPpypfKSbLZR4224rvmaP1bKuTQcOcR1w4adOPfDpl9u87VDvSJCPiKA91vHYpKlVN4HZsjgnE4Id1Cq3KBkhQS6avdjzbC+26KPxD3AZeGgrd851GUu/tc1X1bl7oy2Bj6aoDoLyhPDYAhUrKg/dywMeF4UkIDIv0dr1omt5pbC80z7PzuyVkHDCsYim4El4PGe7JfCKQLOe39emgEOo+iueDGlKIH9kjklwrOXL858BLBAM/mBQsBZkGef/X7qY91v4OFhZeaKk/ZAubozAhrvam4Lw=", Value: "ewogICJ0aW1lc3RhbXAiIDogMTcxMzg4NDU1Nzc4OSwKICAicHJvZmlsZUlkIiA6ICJhNGEwMDI3MTg0NDk0ZjQwYWU3M2EwOTY0MzdkOGY3NiIsCiAgInByb2ZpbGVOYW1lIiA6ICJKdXN0X1ZsYWQiLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjUyZDQ5YTRjMDViODg2ZmM4NjNkMzE0ZmJjNTdiNzY0NDlmZTAzNjkzOTIwNzhkNGJmN2ExYTU5MTNlNzQ3ZCIKICAgIH0KICB9Cn0="}]}, Name: "Just_Vlad"}}}], NoBasePlate: 1b, HurtTime: 0s, CustomNameVisible: 1b}