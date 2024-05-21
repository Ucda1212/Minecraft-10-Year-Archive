
# how big is the array?
execute store result score #length utils.sort.tmp run data get storage utils:sort search.array

# go through the array and find the lowest value
scoreboard players set #highest utils.sort.tmp -2147483648
scoreboard players set #highestIndex utils.sort.tmp -1
scoreboard players set #i utils.sort.tmp 0

# end if rest is sorted
scoreboard players set #isSorted utils.sort.tmp 1
scoreboard players set #previous utils.sort.tmp 2147483647

data modify storage utils:sort search.tmpArray set from storage utils:sort search.array

function utils:sort/search/inner with storage utils:sort search

# is the remaining array already fully sorted?
execute if score #isSorted utils.sort.tmp matches 1 run data modify storage utils:sort search.result append from storage utils:sort search.array[]
execute if score #isSorted utils.sort.tmp matches 1 run return 1

execute store result storage utils:sort search.i int 1 run scoreboard players get #highestIndex utils.sort.tmp
function utils:sort/search/copy_lowest with storage utils:sort search

# continue until array is empty
execute if score #length utils.sort.tmp matches 1.. run function utils:sort/search/run with storage utils:sort search