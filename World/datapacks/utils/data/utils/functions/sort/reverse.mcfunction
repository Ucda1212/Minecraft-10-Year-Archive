# reverses a given array
# 
# @param type						storage | entity | block
# @param target 				depending on the above, either the storage namespace, entity selector or block location
# @param targetPath 		the path to the NBT array you want reversed

# store given data in own storage object for speed and to know where it's located
$data modify storage utils:sort reverse.array set from $(type) $(target) $(targetPath)
data merge storage utils:sort {reverse:{result:[]}}

execute store result score #n utils.sort.tmp run data get storage utils:sort reverse.array

# run the sort
execute if score #n utils.sort.tmp matches 1.. run function utils:sort/reverse/run

# copy the result to the original array
$data modify $(type) $(target) $(targetPath) set from storage utils:sort reverse.result