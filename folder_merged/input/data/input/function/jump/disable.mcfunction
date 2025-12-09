execute unless entity @s[scores={input.revoke_jump=1..}] run return 0

scoreboard players remove @s input.revoke_jump 1
scoreboard players add @s input.jumped_last 2
execute if score @s input.jumped_last >= @s input.tick run tp @s @s
scoreboard players remove @s input.jumped_last 2
advancement revoke @s only input:jump/disable