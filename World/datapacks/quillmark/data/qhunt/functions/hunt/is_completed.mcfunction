# Run with PlayerData (or at least a player UUID & hunt)

$execute if data storage qhunt:var {PlayerData:{$(UUID0)$(UUID1)$(UUID2)$(UUID3):{$(Hunt):{Completed:true}}}} run return 1
return 0