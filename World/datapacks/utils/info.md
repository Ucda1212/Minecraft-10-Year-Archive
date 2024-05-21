# Name:
Utils

## Contributors:
- Neylz
- Plagiatus
- Stuffy

## Description:
Generally used functions.

### Available tags

#### instantiated calls
- ``#utils:tick/instantiated_players`` runs every tick ``as @a at @s``. Permits to avoid successives @a calls in ticks functions.
- ``#utils:tick/instantiated_entities`` runs every tick ``as @e at @s``. Permits to avoid successives @e calls in ticks functions. Runs after ``#utils:tick/instantiated_players``.

#### interaction entities
- `#utils:interact/entity_lc` runs `as` and `at` interaction entities that were hit / left clicked by a player. You can select the player using `@p[tag=utils.interact.lc]` or `@p[tag=util.interact.c]` 
- `#utils:interact/entity_rc` runs `as` and `at` interaction entities that were interacted / right clicked by a player. You can select the player using `@p[tag=utils.interact.rc]` or `@p[tag=utils.interact.c]`

_Info about interaction calls:_
- Please use an early out when using this function (end the function early with `return` or call a different function) if it's not your entity.
- To include your entities for this system, add this tag to them: `utils.interact`

#### common
- ``#utils:tick`` : runs every tick. Runs after ``#minecraft:tick``. Useful to use preprocessed data by libs like the [scoreboards below](#available-scores).

#### clock
- ``#utils:clock/2t_a`` : runs every two ticks
- ``#utils:clock/2t_b`` : runs every two ticks but never on the same tick as ``#utils:clock/2t_a``. Permits load balancing.
- ``#utils:clock/10t``
- ``#utils:clock/1s``
- ``#utils:clock/2s``
- ``#utils:clock/60s``

#### login / relogging
- `#utils:player/new` runs `as` and `at` a player that joins for the first time.
- `#utils:player/returning` runs `as` and `at` a player that joins for a consecutive time.

### Available scores

#### 🚨 To use those scores, register your tick function in ``#utils:tick`` or ``#utils:tick/*`` instead of ``#minecraft:tick``. 

- ``utils.player.pos.x`` Provides each tick the players X position. Fixed point float set to 10².
- ``utils.player.pos.y`` Provides each tick the players Y position. Fixed point float set to 10².
- ``utils.player.pos.z`` Provides each tick the players Z position. Fixed point float set to 10².
- ``utils.player.pos.pitch`` Provides each tick the players Pitch angle. Fixed point float set to 10². Pitch is the angle on the vertical axis.
- ``utils.player.pos.yaw`` Provides each tick the players Yaw angle. Fixed point float set to 10². Yaw is the angle on the horizontal axis.

### Available Functions

#### sorting
- `utils:sort/search` (macro function) will sort a given array by a given (numeric) attribute, highest first 
- `utils:sort/reverse` (macro function) will revert the order of a given array 

## Location:
None.
