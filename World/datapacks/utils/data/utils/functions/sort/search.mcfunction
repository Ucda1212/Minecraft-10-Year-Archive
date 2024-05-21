# runs searchsort on a given array
# 
# @param type						storage | entity | block
# @param target 				depending on the above, either the storage namespace, entity selector or block location
# @param targetPath 		the path to the NBT array you want sorted
# @param attribute			the path to the attribute that you want to sort by (attribute MUST BE AN INTEGER). As a path, with a leading ".". May be empty if given targetpath is an integer array already.
# @param scale					how much the attribute should be scaled (useful for decimal numbers, default 1)

# reset in case there is no data in new thing
data modify storage utils:sort search.array set value []
# store given data in own storage object for speed and to know where it's located
$data modify storage utils:sort search.array set from $(type) $(target) $(targetPath)
# $say $(type) $(target) $(targetPath)
data merge storage utils:sort {search:{result:[]}}

# fill options with defaults
data merge storage utils:sort {search:{attribute:"",scale:1}}
# then merge with new values
$data modify storage utils:sort search.attribute set value "$(attribute)"

execute store result score #n utils.sort.tmp run data get storage utils:sort search.array

# run the sort
execute if score #n utils.sort.tmp matches 1.. run function utils:sort/search/run with storage utils:sort search

# copy the result to the original array
$data modify $(type) $(target) $(targetPath) set from storage utils:sort search.result