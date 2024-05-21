$execute store result score #tmp utils.sort.tmp run data get storage utils:sort search.tmpArray[0]$(attribute) $(scale)
data remove storage utils:sort search.tmpArray[0]

execute if score #highest utils.sort.tmp <= #tmp utils.sort.tmp run scoreboard players operation #highestIndex utils.sort.tmp = #i utils.sort.tmp
execute if score #highest utils.sort.tmp <= #tmp utils.sort.tmp run scoreboard players operation #highest utils.sort.tmp = #tmp utils.sort.tmp

execute if score #previous utils.sort.tmp < #tmp utils.sort.tmp run scoreboard players set #isSorted utils.sort.tmp 0
scoreboard players operation #previous utils.sort.tmp = #tmp utils.sort.tmp

scoreboard players add #i utils.sort.tmp 1 


execute if score #i utils.sort.tmp < #length utils.sort.tmp run function utils:sort/search/inner with storage utils:sort search