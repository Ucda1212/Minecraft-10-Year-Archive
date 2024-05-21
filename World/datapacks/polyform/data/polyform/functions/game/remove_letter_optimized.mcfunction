summon item ~ ~0.05 ~ {Tags:["polyform.new"], Item:{"id":"minecraft:player_head",Count:1b, components:{"minecraft:profile":{ id: [I; 1374579730, 1042370034, -1587386351, -1172036165], properties: [{ name: "textures", value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTdmOWNlMmFmY2Q4OTc4YmI0YmRhZmEyYmE5Yjc3YjE4YmFmNDIzMzA1ZTYyZmRiMGM3YmQ4YmQ1YjFiZCJ9fX0=" }] }}}, Motion:[0.0d, 0.1d, 0.0d]}
data modify entity @e[type=item, limit=1, tag=polyform.new] Item.components set from entity @s item.components
data modify entity @e[type=item, limit=1, tag=polyform.new] Owner set from entity @a[scores={polyform.next=1..}, limit=1] UUID
kill @s
