# I know this is dumb, I don't want to deal with player ids right now, it happens once on an interact so it's not going to cause lag or anything
data modify storage qhunt:var PlayerData.Temp.UUID0 set from entity @s UUID[0]
data modify storage qhunt:var PlayerData.Temp.UUID1 set from entity @s UUID[1]
data modify storage qhunt:var PlayerData.Temp.UUID2 set from entity @s UUID[2]
data modify storage qhunt:var PlayerData.Temp.UUID3 set from entity @s UUID[3]