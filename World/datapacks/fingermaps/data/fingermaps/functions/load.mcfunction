#This is needed for some reason since the function doesn't recognise players untill 5t after reload
scoreboard objectives add fm.has_item dummy

schedule clear fingermaps:check_advancements
function fingermaps:check_advancements