#> common:flowerpots/target

playsound entity.villager.no master @s
tellraw @s [{"text":"Did you know you can put interaction entities on flower pots!\nHere's how!","color":"green"},{"text":"\nsummon interaction x y z {width:0.4f,height:0.4f}","color":"aqua"}]