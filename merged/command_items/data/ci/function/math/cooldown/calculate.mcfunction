execute if score %cooldown_current ci.math matches 0 run return 0
scoreboard players operation %cooldown_current ci.math -= %WORLD ci.tick
#scoreboard players operation %cooldown_current ci.math += @s ci.tick