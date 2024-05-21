# put latest element into the beginning
data modify storage utils:sort reverse.result prepend from storage utils:sort reverse.array[0]
data remove storage utils:sort reverse.array[0]

# continue until array is empty
scoreboard players remove #n utils.sort.tmp 1
execute if score #n utils.sort.tmp matches 1.. run function utils:sort/reverse/run