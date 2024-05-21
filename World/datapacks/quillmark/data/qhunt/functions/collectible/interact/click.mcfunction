execute store result storage qhunt:var Interaction.Time long 1 run time query gametime
data modify storage qhunt:var Interaction.UUID set from entity @s UUID
function qhunt:collectible/interact/find with storage qhunt:var Interaction
advancement revoke @s only qhunt:interact